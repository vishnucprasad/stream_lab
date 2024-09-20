import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/app_action/app_action_cubit.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light(),
        home: const HomeScreen(),
      ),
    );
  }
}
