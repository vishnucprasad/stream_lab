import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/extensions/context_extension.dart';

class NewConnectionButton extends StatelessWidget {
  const NewConnectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void openNewConnection() {
      context.read<SocketBloc>().add(const SocketEvent.clearAllResponses());
      context.read<ConnectionFormBloc>().add(
            const ConnectionFormEvent.newConnectionButtonPressed(),
          );
    }

    return BlocBuilder<SocketBloc, SocketState>(
      builder: (context, state) {
        return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
          builder: (context, formState) {
            return ListTile(
              onTap: () {
                if (state.isConnected) {
                  return context.showWarningToast(
                    message:
                        'Disconnect from the current connection before switching to another.',
                  );
                }

                if (!formState.isSaved) {
                  return context.showDialog(
                    dialogType: DialogType.question,
                    title: 'Save?',
                    message:
                        'Do you want to save your changes before switching to another, or discard them?',
                    confirmButtonText: 'Save',
                    dismissButtonText: 'Discard',
                    onConfirm: () {
                      context
                          .read<ConnectionFormBloc>()
                          .add(const ConnectionFormEvent.saveButtonPressed());
                      openNewConnection();
                    },
                    onDismiss: openNewConnection,
                  );
                }

                openNewConnection();
              },
              tileColor: kPrimaryColor,
              textColor: Colors.white,
              iconColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              leading: const Icon(Icons.add),
              title: const Text('N E W  C O N N E C T I O N'),
            );
          },
        );
      },
    );
  }
}
