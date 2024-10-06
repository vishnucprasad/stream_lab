import 'package:flutter/material.dart' hide ConnectionState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class StreamLabDrawer extends StatelessWidget {
  const StreamLabDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CONNECTIONS',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                  ),
                ],
              ),
            ),
            BlocBuilder<ConnectionBloc, ConnectionState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.connections.length,
                    itemBuilder: (context, index) {
                      final connection = state.connections[index];
                      final selectedConnectionKey = context
                          .read<ConnectionFormBloc>()
                          .state
                          .connectionKey;

                      return Padding(
                        padding: kTilePadding,
                        child: ListTile(
                          onTap: () {
                            if (selectedConnectionKey != connection.key) {
                              context
                                  .read<ConnectionFormBloc>()
                                  .add(ConnectionFormEvent.connectionSelected(
                                    connection: state.connections[index],
                                  ));
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          leading: const Icon(
                            Icons.wifi_off,
                            color: Colors.red,
                          ),
                          title: Text(
                            connection.connectionName,
                            style: kDrawerTextStyle,
                          ),
                          trailing: const Icon(Icons.more_vert),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            Padding(
              padding: kTilePadding.copyWith(bottom: 8),
              child: ListTile(
                onTap: () => context.read<ConnectionFormBloc>().add(
                      const ConnectionFormEvent.newConnectionButtonPressed(),
                    ),
                tileColor: kPrimaryColor,
                textColor: Colors.white,
                iconColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: const Icon(Icons.add),
                title: const Text('N E W  C O N N E C T I O N'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
