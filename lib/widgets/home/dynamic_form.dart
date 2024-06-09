import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/form_template.dart';
import '../../util/colors.dart';

class DynamicForm extends ConsumerStatefulWidget {
  const DynamicForm({super.key, required this.parameters});
  final List<Parameter> parameters;
  @override
  _DynamicFormState createState() => _DynamicFormState();
}

class _DynamicFormState extends ConsumerState<DynamicForm> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData = {};
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 32.0, bottom: 72.0, right: 32.0, top: 32.0),
      child: Form(
        key: _formKey,
        child: ListView.separated(
          itemCount: widget.parameters.length,
          itemBuilder: (context, index) {
            final parameter = widget.parameters[index];
            if (parameter.isHidden) {
              return const SizedBox.shrink();
            }
            if (parameter.dataType == 'String' || parameter.dataType == 'Date') {
              return TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: CustomColors.blueBorder),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: parameter.displayName,
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
                onChanged: (value) {
                  formData[parameter.name] = value;
                },
                validator: (value) {
                  if (parameter.isMandatory &&
                      (value == null || value.isEmpty)) {
                    return '${parameter.displayName} is required';
                  }
                  return null;
                },
              );
            }
            if (parameter.dataType == 'Selection' ||
                parameter.dataType == 'ConditionalSelection') {
              List<String> options;
              String? initialValue;

              if (parameter.dataType == 'Selection') {
                options = parameter.possibleValues!.toSet().toList();
                initialValue =
                    formData[parameter.name] ?? parameter.defaultSelection;
                if (formData[parameter.name] == null &&
                    parameter.defaultSelection != null) {
                  formData[parameter.name] = parameter.defaultSelection;
                }
              } else {
                final dependantFieldName =
                    parameter.possibleValuesMap!['dependantFieldName'];
                final dependantFieldValue = formData[dependantFieldName];
                final List<dynamic>? rawOptions =
                    parameter.possibleValuesMap!['value'][dependantFieldValue];
                options = rawOptions?.toSet().toList().cast<String>() ?? [];

                // If dependantFieldValue is null (e.g., not selected yet), use default selection to get options
                final defaultSelection = formData[parameter.defaultSelection];
                final defaultOptions =
                    parameter.possibleValuesMap!['value'][defaultSelection];

                initialValue = formData[parameter.name] ??
                    defaultOptions?.toSet().toList().cast<String>() ??
                    parameter.defaultSelection;
                // Check if the current value is still valid
                if (!options.contains(initialValue)) {
                  initialValue = parameter
                      .defaultSelection; // Reset to default if not found
                  formData[parameter.name] = initialValue; // Update form data
                }
              }
              return DropdownButtonFormField(
                isExpanded: true,
                key: UniqueKey(),
                decoration: InputDecoration(
                  hintText: parameter.displayName,
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: CustomColors.blueBorder),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                value: initialValue,
                items: options.map((option) {
                  return DropdownMenuItem(
                    key: UniqueKey(),
                    value: option,
                    child: Text(
                      option,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  formData[parameter.name] = value;
                  setState(() {});
                },
                validator: (value) {
                  if (parameter.isMandatory &&
                      (value == null || value.isEmpty)) {
                    return '${parameter.displayName} is required';
                  }
                  return null;
                },
              );
            }
            return Container(
              height: 20,
              color: Colors.red,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 16.0);
          },
        ),
      ),
    );
  }
}
