import 'package:flutter/material.dart';

class ClearAllResponsesButton extends StatelessWidget {
  const ClearAllResponsesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.delete_sweep),
      label: const Text('Clear all responses'),
    );
  }
}
