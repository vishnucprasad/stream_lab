import 'package:flutter/material.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/clear_all_responses_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/connection_status_badge.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list_content.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list_title.dart';
import 'package:toggle_list/toggle_list.dart';

class ResponseList extends StatelessWidget {
  const ResponseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              kWidthXl,
              Text(
                'Resposnses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              ConnectionStatusBadge(),
              kWidth,
              ClearAllResponsesButton(),
              kWidth,
            ],
          ),
          kHeight,
          Expanded(
            child: ToggleList(
              divider: kHeight,
              children: [
                ToggleListItem(
                  itemDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  title: const ResponseListTitle(
                    type: EventType.listener,
                    eventName: 'JOINED',
                    data: '{ "userId": "66d9516008dee5d1432f5583" }',
                  ),
                  content: const ResponseListContent(
                    type: EventDataType.json,
                    data: '{ "userId": "66d9516008dee5d1432f5583" }',
                  ),
                ),
                ToggleListItem(
                  itemDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  title: const ResponseListTitle(
                    type: EventType.emitter,
                    eventName: 'JOIN',
                    data: '66d9516008dee5d1432f5583',
                  ),
                  content: const ResponseListContent(
                    type: EventDataType.text,
                    data: '66d9516008dee5d1432f5583',
                  ),
                ),
                ToggleListItem(
                  itemDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  title: const ResponseListTitle(
                    type: EventType.connected,
                    eventName: 'Connected',
                    data: 'Connected to http://localhost:8080',
                  ),
                  content: const ResponseListContent(
                    type: EventDataType.text,
                    data: 'Connected to http://localhost:8080',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
