import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConnectionNameInputField extends HookWidget {
  const ConnectionNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: 'Connection 1');

    return Flexible(
      child: IntrinsicWidth(
        child: SizedBox(
          height: 24,
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            onTap: () => controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: controller.text.length,
            ),
          ),
        ),
      ),
    );
  }
}
