import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_url_input_field.dart';

class ConfigurationConnectionArea extends StatelessWidget {
  const ConfigurationConnectionArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ConnectionUrlInputField(),
        kWidth,
        SizedBox(
          height: 40,
          child: ElevatedButton.icon(
            onPressed: () {},
            style: kDefaultButtonStyle.copyWith(
              backgroundColor: const WidgetStatePropertyAll<Color>(
                Colors.red,
              ),
            ),
            icon: const Icon(Icons.link_off),
            label: const Text('Disconnect'),
          ),
        ),
      ],
    );
  }
}
