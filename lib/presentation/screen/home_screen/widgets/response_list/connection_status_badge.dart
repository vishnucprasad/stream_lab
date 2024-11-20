import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';

class ConnectionStatusBadge extends StatelessWidget {
  const ConnectionStatusBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocketBloc, SocketState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: state.isConnected ? Colors.green : Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            state.isConnected ? 'Connected' : 'Disconnected',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white, // Green text
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
