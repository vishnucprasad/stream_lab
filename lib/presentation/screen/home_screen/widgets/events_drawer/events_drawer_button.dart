import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EventsDrawerButton extends StatelessWidget {
  const EventsDrawerButton({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
        style: kDefaultButtonStyle.copyWith(
          padding: const WidgetStatePropertyAll<EdgeInsets>(
            EdgeInsets.symmetric(
              horizontal: 16,
            ),
          ),
        ),
        child: const Text(
          'Events',
        ),
      ),
    );
  }
}
