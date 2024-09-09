import 'package:flutter/material.dart';

class ArgumentTypeDropdown extends StatelessWidget {
  const ArgumentTypeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.grey[800],
      ),
      dropdownColor: Colors.grey[400],
    );
  }
}
