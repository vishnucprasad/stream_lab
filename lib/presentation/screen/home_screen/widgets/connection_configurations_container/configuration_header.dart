import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_name_input_field.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/save_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/saved_status_badge.dart';

class ConfigurationHeader extends StatelessWidget {
  const ConfigurationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  BlocBuilder<SocketBloc, SocketState>(
                    builder: (context, state) {
                      return Icon(
                        state.isConnected ? Icons.wifi : Icons.wifi_off,
                        color: state.isConnected ? Colors.green : Colors.red,
                      );
                    },
                  ),
                  kWidth,
                  const ConnectionNameInputField(),
                ],
              ),
            ),
          ),
          const SavedStatusBadge(),
          kWidth,
          const SaveButton()
        ],
      ),
    );
  }
}
