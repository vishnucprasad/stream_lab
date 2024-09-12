import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TextDataField extends HookWidget {
  const TextDataField({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: text);

    return TextFormField(
      controller: controller,
      readOnly: true,
      expands: true,
      maxLines: null,
      textAlignVertical: TextAlignVertical.top,
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
