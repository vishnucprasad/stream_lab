import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/core/widgets/drawer_list.dart';
import 'package:stream_lab/presentation/core/widgets/new_connection_button.dart';

class StreamLabDrawer extends StatelessWidget {
  const StreamLabDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CONNECTIONS',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                  ),
                ],
              ),
            ),
            const DrawerList(),
            Padding(
              padding: kTilePadding.copyWith(bottom: 8),
              child: const NewConnectionButton(),
            ),
          ],
        ),
      ),
    );
  }
}
