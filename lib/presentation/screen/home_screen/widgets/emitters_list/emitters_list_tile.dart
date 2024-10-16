import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';

class EmittersListTile extends StatelessWidget {
  const EmittersListTile({
    super.key,
    required this.emitterIndex,
  });

  final int emitterIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        final emitter = state.connectionFormData?.eventEmitters[emitterIndex];

        return MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () => context
                .read<ConnectionFormBloc>()
                .add(ConnectionFormEvent.emitterSelected(
                  emitterIndex: emitterIndex,
                )),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  kWidth,
                  const Icon(
                    Icons.arrow_circle_up,
                    color: Colors.blue,
                  ),
                  kWidth,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent, // No fill color
                      border: Border.all(
                        color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(4), // Rounded corners
                    ),
                    child: Text(
                      emitter?.name.getOrCrash(),
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                  kWidth,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
