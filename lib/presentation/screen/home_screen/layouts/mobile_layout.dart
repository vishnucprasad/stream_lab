import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resizable_container/flutter_resizable_container.dart';
import 'package:stream_lab/application/app_action/app_action_cubit.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/widgets/stream_lab_drawer.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_configurations_container.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/events_drawer/events_drawer.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/events_drawer/events_drawer_button.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
      listenWhen: (p, c) =>
          p.connectionKey != c.connectionKey ||
          p.emitterIndex != c.emitterIndex,
      listener: (context, state) {
        if (_scaffoldKey.currentState?.isDrawerOpen == true) {
          _scaffoldKey.currentState?.closeDrawer();
        }
        if (_scaffoldKey.currentState?.isEndDrawerOpen == true) {
          _scaffoldKey.currentState?.closeEndDrawer();
        }
      },
      builder: (context, formState) {
        return Scaffold(
          key: _scaffoldKey,
          drawer: const StreamLabDrawer(),
          appBar: AppBar(
            title: const Text('S T R E A M   L A B'),
            actions: [
              if (formState.connectionFormData != null)
                EventsDrawerButton(scaffoldKey: _scaffoldKey),
              kWidthXl,
            ],
          ),
          endDrawer: formState.connectionFormData != null
              ? EventsDrawer(scaffoldKey: _scaffoldKey)
              : null,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                formState.connectionFormData != null
                    ? Expanded(
                        child: ResizableContainer(
                          direction: Axis.vertical,
                          divider: ResizableDivider(
                            color: Theme.of(context).colorScheme.primary,
                            thickness: 1,
                            size: 14,
                            indent: 16,
                            endIndent: 16,
                            onHoverEnter: () => context
                                .read<AppActionCubit>()
                                .mainDividerHoverChanged(true),
                            onHoverExit: () => context
                                .read<AppActionCubit>()
                                .mainDividerHoverChanged(false),
                          ),
                          children: const [
                            ResizableChild(
                              minSize: 275,
                              size: ResizableSize.ratio(2 / 3),
                              child: ConnectionConfigurationsContainer(),
                            ),
                            ResizableChild(
                              minSize: 100,
                              child: ResponseList(),
                            ),
                          ],
                        ),
                      )
                    : const Expanded(
                        child: Center(
                          child: Text(
                            'Oops! It seems like there are no connections selected.',
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
