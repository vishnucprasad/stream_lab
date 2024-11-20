import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';

class ClearAllResponsesButton extends StatelessWidget {
  const ClearAllResponsesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () =>
          context.read<SocketBloc>().add(const SocketEvent.clearAllResponses()),
      icon: const Icon(Icons.delete_sweep),
      label: const Text('Clear all responses'),
    );
  }
}
