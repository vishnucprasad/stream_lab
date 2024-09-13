import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class ListenersListTile extends StatelessWidget {
  const ListenersListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          kWidth,
          const Icon(
            Icons.arrow_circle_down,
            color: Colors.orange,
          ),
          kWidth,
          Transform.scale(
            scale: 0.75,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                value: true,
                onChanged: (value) {},
                thumbColor: WidgetStatePropertyAll<Color?>(
                  Colors.grey[200],
                ),
                activeTrackColor: Colors.orange,
                trackOutlineColor: const WidgetStatePropertyAll(
                  Colors.transparent,
                ),
                inactiveTrackColor: Colors.grey[400],
              ),
            ),
          ),
          kWidth,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            decoration: BoxDecoration(
              color: Colors.transparent, // No fill color
              border: Border.all(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(4), // Rounded corners
            ),
            child: const Text(
              'JOINED',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.orange,
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
