import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/domain/event/models/event.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EmitButton extends StatelessWidget {
  const EmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocketBloc, SocketState>(
      builder: (context, state) {
        return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
          builder: (context, formState) {
            return SizedBox(
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  if (state.isConnected) {
                    final event = Event.fromDomain(formState.connectionFormData!
                        .eventEmitters[formState.emitterIndex!]);
                    context
                        .read<SocketBloc>()
                        .add(SocketEvent.eventEmitted(event: event));
                  }
                },
                style: kDefaultButtonStyle.copyWith(
                  padding: const WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                  ),
                ),
                child: const Text(
                  'Emit',
                ),
              ),
            );
          },
        );
      },
    );
  }
}
