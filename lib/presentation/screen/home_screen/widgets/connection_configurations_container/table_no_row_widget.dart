import 'package:flutter/material.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class TableNoRowWidget extends StatelessWidget {
  const TableNoRowWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          kHeight,
          SizedBox(
            height: 30,
            child: ElevatedButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.add),
              label: const Text('Add new'),
              style: kDefaultButtonStyle.copyWith(
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
