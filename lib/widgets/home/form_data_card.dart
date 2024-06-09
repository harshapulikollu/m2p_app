import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:m2p_app/widgets/home/bottom_button.dart';

import '../../model/form_data.dart';
import 'form_data_row.dart';

class FormDataCard extends StatelessWidget {
  const FormDataCard({super.key, required this.data});
  final List<Payload> data;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Theme(
                data: Theme.of(context).copyWith(
                    dividerColor: Colors
                        .transparent), // add this to remove the default divider line on top & bottom of expansion tile when opened
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: const Text(
                    'Agency Details',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: data
                          .map(
                            (el) => FormDataRow(
                              name: el.name,
                              value: el.value,
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        BottomButton(
          text: 'Edit',
          onPressed: () => _navigateToFromTemplate(context),
        ),
      ],
    );
  }

  _navigateToFromTemplate(BuildContext context) {
    Navigator.pushNamed(context, '/form');
  }
}
