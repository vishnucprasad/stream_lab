import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConnectionUrlInputField extends HookWidget {
  const ConnectionUrlInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: 'http://localhost:8080');

    return Flexible(
      child: SizedBox(
        height: 40,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 8,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: 'Enter URL',
          ),
        ),
      ),
    );
  }
}
