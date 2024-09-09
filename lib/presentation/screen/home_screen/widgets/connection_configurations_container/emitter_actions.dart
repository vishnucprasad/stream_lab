import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/acknowledgment_check_box.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/argument_type_dropdown.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/emit_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/event_name_input_field.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/new_argument_button.dart';

class EmitterActions extends StatelessWidget {
  const EmitterActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        NewArgumentButton(),
        kWidth,
        ArgumentTypeDropdown(),
        Spacer(),
        AcknowledgmentCheckBox(),
        kWidth,
        EventNameInputField(),
        kWidth,
        EmitButton()
      ],
    );
  }
}
