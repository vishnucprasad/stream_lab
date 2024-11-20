import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/extensions/context_extension.dart';

class ConnectionButton extends StatelessWidget {
  const ConnectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocketBloc, SocketState>(
      builder: (context, state) {
        return SizedBox(
          height: 50,
          child: BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
            builder: (context, formState) {
              return ElevatedButton.icon(
                onPressed: () {
                  if (state.isConnected) {
                    return context
                        .read<SocketBloc>()
                        .add(const SocketEvent.disconnectButtonPresssed());
                  }

                  if (formState.connectionFormData != null &&
                      formState.connectionFormData!.connectionUrl.isValid()) {
                    context
                        .read<SocketBloc>()
                        .add(SocketEvent.connectButtonPressed(
                          connectionKey: formState.connectionKey,
                          connection: Connection.fromDomain(
                            formState.connectionFormData!,
                          ),
                        ));
                  } else {
                    context.showErrorToast(message: 'Invalid Connection URL!');
                  }
                },
                style: kDefaultButtonStyle.copyWith(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    state.isConnected ? Colors.red : Colors.green,
                  ),
                ),
                icon: state.isConnected
                    ? const Icon(Icons.link_off)
                    : const Icon(Icons.link),
                label: Text(state.isConnected ? 'Disconnect' : 'Connect'),
              );
            },
          ),
        );
      },
    );
  }
}
