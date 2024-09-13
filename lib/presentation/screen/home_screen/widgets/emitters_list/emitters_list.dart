import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/emitters_list/emitters_list_tile.dart';

class EmittersList extends StatelessWidget {
  const EmittersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
        child: Column(
          children: [
            Row(
              children: [
                kWidth,
                const Text(
                  'Event Emitters',
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
                  return const EmittersListTile();
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
