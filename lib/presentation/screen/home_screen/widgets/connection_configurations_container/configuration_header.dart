import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_name_input_field.dart';

class ConfigurationHeader extends StatelessWidget {
  const ConfigurationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(
                    Icons.wifi,
                    color: Colors.green,
                  ),
                  kWidth,
                  ConnectionNameInputField(),
                ],
              ),
            ),
          ),
          if (true)
            Container(
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
            ),
          kWidth,
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.save),
            label: const Text('Save'),
            style: kDefaultButtonStyle,
          )
        ],
      ),
    );
  }
}
