import 'package:flutter/material.dart' hide ConnectionState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/widgets/drawer_list_item.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionBloc, ConnectionState>(
      builder: (context, state) {
        return state.connections.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: state.connections.length,
                  itemBuilder: (context, index) {
                    final connection = state.connections[index];

                    return Padding(
                      padding: kTilePadding,
                      child: DrawerListItem(connection: connection),
                    );
                  },
                ),
              )
            : const Expanded(
                child: Center(
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Oops! It seems like there are no connections available.',
                    ),
                  ),
                ),
              );
      },
    );
  }
}
