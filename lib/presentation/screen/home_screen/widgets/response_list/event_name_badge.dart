import 'package:flutter/material.dart';
import 'package:stream_lab/core/constants.dart';

class EventNameBadge extends StatelessWidget {
  const EventNameBadge({
    super.key,
    required this.type,
    required this.eventName,
  });

  final EventType type;
  final String eventName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent, // No fill color
        border: Border.all(
          color: type == EventType.connected
              ? Colors.green
              : type == EventType.disconnected
                  ? Colors.red
                  : type == EventType.emitter
                      ? Colors.blue
                      : Colors.orange,
        ),
        borderRadius: BorderRadius.circular(4), // Rounded corners
      ),
      child: Text(
        eventName,
        style: TextStyle(
          fontSize: 12,
          color: type == EventType.connected
              ? Colors.green
              : type == EventType.disconnected
                  ? Colors.red
                  : type == EventType.emitter
                      ? Colors.blue
                      : Colors.orange, // Green text
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
