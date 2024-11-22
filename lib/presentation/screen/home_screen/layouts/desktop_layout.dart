import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resizable_container/flutter_resizable_container.dart';
import 'package:stream_lab/application/app_action/app_action_cubit.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/widgets/stream_lab_drawer.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/connection_configurations_container/connection_configurations_container.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/emitters_list/emitters_list.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/listeners_list/listeners_list.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/response_list/response_list.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<AppActionCubit, AppActionState>(
          builder: (context, state) {
            return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
              builder: (context, formState) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // open drawer
                    const StreamLabDrawer(),

                    formState.connectionFormData != null
                        ? Expanded(
                            child: Shortcuts(
                              shortcuts: {
                                LogicalKeySet(
                                  LogicalKeyboardKey.controlLeft,
                                  LogicalKeyboardKey.keyS,
                                ): const SaveIntent(),
                              },
                              child: Actions(
                                actions: {
                                  SaveIntent: CallbackAction<SaveIntent>(
                                    onInvoke: (_) {
                                      return !formState.isSaved
                                          ? context
                                              .read<ConnectionFormBloc>()
                                              .add(const ConnectionFormEvent
                                                  .saveButtonPressed())
                                          : null;
                                    },
                                  ),
                                },
                                child: Focus(
                                  autofocus: true,
                                  child: Row(
                                    children: [
                                      // first half of page
                                      Expanded(
                                        flex: 2,
                                        child: ResizableContainer(
                                          direction: Axis.vertical,
                                          divider: ResizableDivider(
                                            color: state.isMainDividerHovered
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .primary
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .inversePrimary,
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
                                              child:
                                                  ConnectionConfigurationsContainer(),
                                            ),
                                            ResizableChild(
                                              minSize: 100,
                                              child: ResponseList(),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // second half of page
                                      Expanded(
                                        child: ResizableContainer(
                                          direction: Axis.vertical,
                                          divider: ResizableDivider(
                                            color: state.isSubdividerHovered
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .primary
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .inversePrimary,
                                            thickness: 1,
                                            size: 14,
                                            indent: 16,
                                            endIndent: 16,
                                            onHoverEnter: () => context
                                                .read<AppActionCubit>()
                                                .subdividerHoverChanged(true),
                                            onHoverExit: () => context
                                                .read<AppActionCubit>()
                                                .subdividerHoverChanged(false),
                                          ),
                                          children: const [
                                            ResizableChild(
                                              minSize: 68,
                                              child: EmittersList(),
                                            ),
                                            // list of stuff
                                            ResizableChild(
                                              minSize: 68,
                                              child: ListenersList(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                );
              },
            );
          },
        ),
      ),
    );
  }
}
