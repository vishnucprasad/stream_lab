import 'package:flutter/material.dart';

class AcknowledgmentCheckBox extends StatelessWidget {
  const AcknowledgmentCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        const Text('Ack'),
      ],
    );
  }
}
