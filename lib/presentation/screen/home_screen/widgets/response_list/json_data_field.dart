import 'package:flutter/material.dart';
import 'package:json_text_field/json_text_field.dart';

class JsonDataField extends StatelessWidget {
  const JsonDataField({
    super.key,
    required this.json,
  });

  final String json;

  @override
  Widget build(BuildContext context) {
    final controller = JsonTextFieldController();
    controller.value = controller.value.copyWith(
      text: json,
      selection: TextSelection.collapsed(offset: json.length),
    );

    return JsonTextField(
      readOnly: true,
      controller: controller,
      isFormatting: true,
      keyboardType: TextInputType.multiline,
      expands: true,
      maxLines: null,
      textAlignVertical: TextAlignVertical.top,
      onChanged: (value) {},
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[400]!,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[400]!,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
