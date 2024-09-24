import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class ConnectionButton extends StatelessWidget {
  const ConnectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: kDefaultButtonStyle.copyWith(
          backgroundColor: const WidgetStatePropertyAll<Color>(
            Colors.red,
          ),
        ),
        icon: const Icon(Icons.link_off),
        label: const Text('Disconnect'),
      ),
    );
  }
}
