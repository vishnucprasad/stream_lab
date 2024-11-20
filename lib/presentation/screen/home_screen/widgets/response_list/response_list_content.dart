import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/json_data_field.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/text_data_field.dart';

class ResponseListContent extends StatelessWidget {
  const ResponseListContent({
    super.key,
    required this.type,
    required this.data,
    required this.responseIndex,
  });

  final EventDataType type;
  final String data;
  final int responseIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'Data',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kWidthXl,
                Text(
                  type.name.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            kHeight,
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
