import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/emitter_actions.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/json_data_input_field.dart';

class EmitterTabView extends StatelessWidget {
  const EmitterTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        return state.emitterFormData != null
            ? const Column(
                children: [
                  Expanded(
                    child: JsonDataInputField(),
                  ),
                  kHeight,
                  Divider(),
                  EmitterActions(),
                ],
              )
            : const Center(
                child: Text(
                  'Oops! It seems like there are no event emitters selected.',
                ),
              );
      },
    );
  }
}
