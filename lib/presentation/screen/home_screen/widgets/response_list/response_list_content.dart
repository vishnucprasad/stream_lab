import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/event_data_format_dropdown.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/json_data_field.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/text_data_field.dart';

class ResponseListContent extends StatelessWidget {
  const ResponseListContent({
    super.key,
    required this.type,
    required this.data,
  });

  final EventDataType type;
  final String data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Data',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kWidthXl,
                EventDataFormatDropdown(),
              ],
            ),
            Flexible(
              child: type == EventDataType.text
                  ? TextDataField(text: data)
                  : JsonDataField(
                      json: const JsonEncoder.withIndent('    ').convert(
                        jsonDecode(data),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
