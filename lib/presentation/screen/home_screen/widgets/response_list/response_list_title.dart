import 'package:flutter/material.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/event_name_badge.dart';

class ResponseListTitle extends StatelessWidget {
  const ResponseListTitle({
    super.key,
    required this.type,
    required this.eventName,
    required this.data,
  });

  final EventType type;
  final String eventName;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        children: [
          kWidth,
          Icon(
            type == EventType.connected
                ? Icons.wifi
                : type == EventType.disconnected
                    ? Icons.wifi_off
                    : type == EventType.emitter
                        ? Icons.arrow_circle_up
                        : Icons.arrow_circle_down,
            color: type == EventType.connected
                ? Colors.green
                : type == EventType.disconnected
                    ? Colors.red
                    : type == EventType.emitter
                        ? Colors.blue
                        : Colors.orange,
          ),
          kWidth,
          EventNameBadge(
            type: type,
            eventName: eventName,
          ),
          kWidth,
          Text(data),
          kWidth,
        ],
      ),
    );
  }
}
