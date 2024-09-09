import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EmitButton extends StatelessWidget {
  const EmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        onPressed: () {},
        style: kDefaultButtonStyle.copyWith(
          padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: 16,
            ),
          ),
        ),
        child: const Text(
          'Emit Event',
        ),
      ),
    );
  }
}
