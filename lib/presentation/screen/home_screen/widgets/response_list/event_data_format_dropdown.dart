import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EventDataFormatDropdown extends StatelessWidget {
  const EventDataFormatDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: DropdownButton<String>(
        elevation: 0,
        underline: const SizedBox.shrink(),
        items: <String>['Text', 'JSON'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: 'JSON',
        onChanged: (String? newValue) {},
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 14,
        ),
        focusColor: Colors.transparent,
        icon: Icon(
          Icons.arrow_drop_down,
          color: kPrimaryColor,
        ),
        dropdownColor: Colors.white,
      ),
    );
  }
}
