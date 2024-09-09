import 'package:flutter/material.dart';

class UnsavedBadge extends StatelessWidget {
  const UnsavedBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent, // No fill color
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: const Text(
        'Unsaved',
        style: TextStyle(
          fontSize: 12,
          color: Colors.red, // Green text
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
