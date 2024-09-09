import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_name_input_field.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/save_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/unsaved_badge.dart';

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
      child: const Row(
        children: [
          Expanded(
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
          if (true) UnsavedBadge(),
          kWidth,
          SaveButton()
        ],
      ),
    );
  }
}
