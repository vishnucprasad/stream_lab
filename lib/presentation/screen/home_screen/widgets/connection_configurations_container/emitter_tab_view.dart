import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/emitter_actions.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/json_data_input_field.dart';

class EmitterTabView extends StatelessWidget {
  const EmitterTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: JsonDataInputField(),
        ),
        kHeight,
        Divider(),
        EmitterActions(),
      ],
    );
  }
}
