import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.save),
      label: const Text('Save'),
      style: kDefaultButtonStyle,
    );
  }
}
