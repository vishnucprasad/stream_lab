import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/socket/socket_bloc.dart';
import 'package:stream_lab/presentation/layout/responsive_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/desktop_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/mobile_layout.dart';
import 'package:stream_lab/presentation/screen/home_screen/layouts/tab_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SocketBloc, SocketState>(
      listenWhen: (p, c) => p.failure != c.failure,
      listener: (context, state) {
        state.failure.fold(
          () => null,
          (f) => FlushbarHelper.createError(
            message: f.message,
          ).show(context),
        );
      },
      child: const ResponsiveLayout(
        mobileLayout: MobileLayout(),
        tabLayout: TabLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
