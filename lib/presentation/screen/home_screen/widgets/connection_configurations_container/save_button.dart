import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        return ElevatedButton.icon(
          onPressed: () {
            if (!state.isSaved) {
              context
                  .read<ConnectionFormBloc>()
                  .add(const ConnectionFormEvent.saveButtonPressed());
            }
          },
          icon: state.isSubmitting
              ? const CircularProgressIndicator()
              : const Icon(Icons.save),
          label: const Text('Save'),
          style: kDefaultButtonStyle,
        );
      },
    );
  }
}
