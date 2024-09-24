import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/injection/injection.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/configuration_connection_area.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/configuration_header.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/configuration_tab_bar.dart';

class ConnectionConfigurationsContainer extends StatelessWidget {
  const ConnectionConfigurationsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
        child: BlocProvider(
          create: (_) => getIt<ConnectionFormBloc>(),
          child: const Column(
            children: [
              ConfigurationHeader(),
              kHeight,
              ConfigurationConnectionArea(),
              kHeightSm,
              ConfigurationTabBar(),
            ],
          ),
        ),
      ),
    );
  }
}
