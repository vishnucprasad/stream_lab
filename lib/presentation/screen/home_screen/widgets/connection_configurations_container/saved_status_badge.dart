import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';

class SavedStatusBadge extends StatelessWidget {
  const SavedStatusBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent, // No fill color
            border: Border.all(
              color: state.isSaved ? Colors.green : Colors.red,
            ),
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          child: Text(
            state.isSaved ? 'Saved' : 'Unsaved',
            style: TextStyle(
              fontSize: 12,
              color: state.isSaved ? Colors.green : Colors.red, // Green text
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
