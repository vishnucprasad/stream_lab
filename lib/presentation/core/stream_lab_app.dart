import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/app_action/app_action_cubit.dart';
import 'package:stream_lab/application/connection/connection_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/injection/injection.dart';
import 'package:stream_lab/presentation/screen/home_screen/home_screen.dart';
import 'package:stream_lab/presentation/theme/app_theme.dart';

class StreamLabApp extends StatelessWidget {
  const StreamLabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AppActionCubit>()),
        BlocProvider(create: (_) => getIt<ConnectionFormBloc>()),
        BlocProvider(
            create: (_) => getIt<ConnectionBloc>()
              ..add(const ConnectionEvent.loadConnections())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const HomeScreen(),
      ),
    );
  }
}
