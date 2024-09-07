import 'package:flutter/material.dart';
import 'package:flutter_resizable_container/flutter_resizable_container.dart';
import 'package:stream_lab/presentation/core/widgets/stream_lab_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S T R E A M   L A B'),
      ),
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
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  ResizableChild(
                    minSize: MediaQuery.of(context).size.height / 4,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                            child: Container(
                              height: 78,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey[200],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
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
                children: [
                  ResizableChild(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  // list of stuff
                  ResizableChild(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
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
