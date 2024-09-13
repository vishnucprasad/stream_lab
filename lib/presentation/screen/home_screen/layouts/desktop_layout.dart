import 'package:flutter/material.dart';
import 'package:flutter_resizable_container/flutter_resizable_container.dart';
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            const StreamLabDrawer(),

            // first half of page
            Expanded(
              flex: 2,
              child: ResizableContainer(
                direction: Axis.vertical,
                divider: ResizableDivider(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  thickness: 1,
                  size: 14,
                  indent: 16,
                  endIndent: 16,
                  onHoverEnter: () {},
                  onHoverExit: () {},
                ),
                children: [
                  ResizableChild(
                    minSize: MediaQuery.of(context).size.height / 4,
                    size: const ResizableSize.ratio(2.5 / 4),
                    child: const ConnectionConfigurationsContainer(),
                  ),
                  ResizableChild(
                    minSize: MediaQuery.of(context).size.height / 4,
                    child: const ResponseList(),
                  ),
                ],
              ),
            ),

            // second half of page
            Expanded(
              child: ResizableContainer(
                direction: Axis.vertical,
                divider: ResizableDivider(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  thickness: 1,
                  size: 14,
                  indent: 16,
                  endIndent: 16,
                  onHoverEnter: () {},
                  onHoverExit: () {},
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
