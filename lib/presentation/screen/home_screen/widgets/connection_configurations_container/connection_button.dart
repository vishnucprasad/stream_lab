import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/presentation/core/constants.dart';

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
                          connection: Connection.fromDomain(
                            formState.connectionFormData!,
                          ),
                        ));
                  } else {
                    FlushbarHelper.createError(
                      message: 'Invalid Connection URL!',
                    ).show(context);
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
