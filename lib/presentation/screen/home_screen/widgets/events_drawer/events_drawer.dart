import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_resizable_container/flutter_resizable_container.dart';
import 'package:stream_lab/application/app_action/app_action_cubit.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/emitters_list/emitters_list.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/listeners_list/listeners_list.dart';

class EventsDrawer extends StatelessWidget {
  const EventsDrawer({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Drawer(
        width: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Event handlers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () => scaffoldKey.currentState?.closeEndDrawer(),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Expanded(
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
    );
  }
}
