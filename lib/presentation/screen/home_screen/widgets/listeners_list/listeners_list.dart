import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/listeners_list/listeners_list_tile.dart';

class ListenersList extends StatelessWidget {
  const ListenersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Column(
          children: [
            Row(
              children: [
                kWidth,
                const Text(
                  'Event Listeners',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const ListenersListTile();
                },
                separatorBuilder: (_, __) => kHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
