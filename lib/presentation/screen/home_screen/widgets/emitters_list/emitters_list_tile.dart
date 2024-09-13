import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EmittersListTile extends StatelessWidget {
  const EmittersListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          kWidth,
          const Icon(
            Icons.arrow_circle_up,
            color: Colors.blue,
          ),
          kWidth,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent, // No fill color
              border: Border.all(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(4), // Rounded corners
            ),
            child: const Text(
              'JOIN',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
          kWidth,
        ],
      ),
    );
  }
}
