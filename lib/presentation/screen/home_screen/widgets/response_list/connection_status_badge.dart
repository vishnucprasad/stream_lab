import 'package:flutter/material.dart';

class ConnectionStatusBadge extends StatelessWidget {
  const ConnectionStatusBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Connected',
        style: TextStyle(
          fontSize: 12,
          color: Colors.white, // Green text
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
