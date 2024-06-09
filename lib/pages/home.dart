import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/model/form_data.dart';
import 'package:m2p_app/widgets/custom_scaffold.dart';

import '../service/api_service.dart';
import '../widgets/error_state.dart';
import '../widgets/home/empty_state.dart';
import '../widgets/home/form_data_card.dart';
import '../widgets/loader.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});

// Fetch formData provider
final fromDataProvider = FutureProvider<FormData>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchFormData();
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsyncValue = ref.watch(fromDataProvider);

    return CustomScaffold(
      title: 'Dynamic Form',
      child: usersAsyncValue.when(
        data: (data) {
          if (data.payload.isEmpty) {
            return const EmptyState();
          }
          return FormDataCard(data: data.payload);
        },
        error: (error, stack) => const ErrorState(),
        loading: () => const Loader(),
      ),
    );
  }
}
