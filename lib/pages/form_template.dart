import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:m2p_app/widgets/home/bottom_button.dart';

import '../model/form_template.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/error_state.dart';
import '../widgets/home/dynamic_form.dart';
import '../widgets/loader.dart';
import 'home.dart';

// Fetch form template provider
final formTemplateProvider = FutureProvider<FormTemplate>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return apiService.fetchFormTemplate();
});

// Form data state provider
final formDataProvider = StateProvider<Map<String, dynamic>>((ref) {
  return {};
});

class FormTemplateUI extends ConsumerWidget {
  const FormTemplateUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formTemplateAsyncValue = ref.watch(formTemplateProvider);
    return CustomScaffold(
      title: 'Source Details',
      leading: const CustomBackButton(),
      child: formTemplateAsyncValue.when(
        data: (formTemplate) => Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 32.0, top: 32.0),
                  child: Text(
                    'Agency Details',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                    child: DynamicForm(parameters: formTemplate.parameters)),
              ],
            ),
            BottomButton(
              text: 'Save',
              onPressed: () {},
            ),
          ],
        ),
        loading: () => const Loader(),
        error: (error, stack) {
          debugPrint('${error.toString()}, stack: ${stack.toString()}');
          return const ErrorState();
        },
      ),
    );
  }
}
