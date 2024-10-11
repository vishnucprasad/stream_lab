import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/event/event_form/event_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/emitter_actions.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/json_data_input_field.dart';

class EmitterTabView extends StatelessWidget {
  const EmitterTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventFormBloc, EventFormState>(
      listenWhen: (p, c) => p.failureOrSucessOption != c.failureOrSucessOption,
      listener: (context, state) {
        state.failureOrSucessOption.fold(
          () => null,
          (either) => either.fold(
            (f) => FlushbarHelper.createError(
              message: f.map(
                clientFailure: (_) => 'Something went wrong.',
                serverFailure: (_) =>
                    'Something went wrong on the server side.',
              ),
            ).show(context),
            (_) => null,
          ),
        );
      },
      child: const Column(
        children: [
          Expanded(
            child: JsonDataInputField(),
          ),
          kHeight,
          Divider(),
          EmitterActions(),
        ],
      ),
    );
  }
}
