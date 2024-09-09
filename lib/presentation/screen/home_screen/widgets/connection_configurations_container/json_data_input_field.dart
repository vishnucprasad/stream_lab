import 'dart:convert';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:json_text_field/json_text_field.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class JsonDataInputField extends StatelessWidget {
  const JsonDataInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = JsonTextFieldController();
    return Stack(
      children: [
        JsonTextField(
          showErrorMessage: true,
          controller: controller,
          isFormatting: true,
          keyboardType: TextInputType.multiline,
          expands: true,
          maxLines: null,
          textAlignVertical: TextAlignVertical.top,
          onChanged: (value) {},
          decoration: InputDecoration(
            hintText: "Enter your JSON data",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                try {
                  final decodedJson =
                      jsonDecode(controller.text); // Decode the JSON string
                  final prettyJson = const JsonEncoder.withIndent('    ')
                      .convert(decodedJson); // Pretty print
                  controller.value = controller.value.copyWith(
                    text: prettyJson,
                    selection:
                        TextSelection.collapsed(offset: prettyJson.length),
                  );
                } catch (_) {
                  FlushbarHelper.createError(message: 'Invalid JSON')
                      .show(context);
                }
              },
              style: kDefaultButtonStyle.copyWith(
                padding: const WidgetStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              child: const Text('Prettify'),
            ),
          ),
        ),
      ],
    );
  }
}
