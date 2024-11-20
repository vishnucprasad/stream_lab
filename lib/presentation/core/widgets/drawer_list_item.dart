import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/extensions/context_extension.dart';

class DrawerListItem extends StatelessWidget {
  const DrawerListItem({
    super.key,
    required this.connection,
  });

  final Connection connection;

  @override
  Widget build(BuildContext context) {
    void openConnection() {
      context.read<SocketBloc>().add(const SocketEvent.clearAllResponses());
      context
          .read<ConnectionFormBloc>()
          .add(ConnectionFormEvent.connectionSelected(
            connection: connection,
          ));
    }

    return BlocBuilder<SocketBloc, SocketState>(
      builder: (context, state) {
        return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
          builder: (context, formState) {
            return ListTile(
              onTap: () {
                if (formState.connectionKey != connection.key) {
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
                        openConnection();
                      },
                      onDismiss: openConnection,
                    );
                  }

                  openConnection();
                }
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              leading: Icon(
                state.isConnected && state.connectionKey == connection.key
                    ? Icons.wifi
                    : Icons.wifi_off,
                color:
                    state.isConnected && state.connectionKey == connection.key
                        ? Colors.green
                        : Colors.red,
              ),
              title: Text(
                connection.connectionName,
                style: kDrawerTextStyle,
              ),
              trailing: PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    onTap: () => context
                        .read<ConnectionBloc>()
                        .add(ConnectionEvent.duplicateConnection(
                          connection: connection,
                        )),
                    child: const ListTile(
                      leading: Icon(
                        Icons.control_point_duplicate,
                        color: Colors.blue,
                      ),
                      title: Text('Duplicate Connection'),
                    ),
                  ),
                  PopupMenuItem(
                    onTap: () {
                      context.showDialog(
                        dialogType: DialogType.question,
                        title: 'Are you sure ?',
                        message:
                            'Are you sure you want to delete ${connection.connectionName} ?',
                        confirmButtonText: 'Yes, delete',
                        dismissButtonText: 'No',
                        onConfirm: () {
                          context.read<ConnectionBloc>().add(
                                ConnectionEvent.deleteConnection(
                                  key: connection.key,
                                ),
                              );
                          if (connection.key == formState.connectionKey) {
                            context.read<ConnectionFormBloc>().add(
                                  const ConnectionFormEvent.initialize(),
                                );
                          }
                        },
                        onDismiss: () {},
                      );
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      title: Text('Delete Connection'),
                    ),
                  ),
                ],
                tooltip: 'More',
                child: const Icon(Icons.more_vert),
              ),
              contentPadding: const EdgeInsets.only(
                left: 16,
                right: 8,
              ),
            );
          },
        );
      },
    );
  }
}
