import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_url_input_field.dart';

class ConfigurationConnectionArea extends StatelessWidget {
  const ConfigurationConnectionArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConnectionUrlInputField(),
        kWidth,
        ConnectionButton(),
      ],
    );
  }
}
