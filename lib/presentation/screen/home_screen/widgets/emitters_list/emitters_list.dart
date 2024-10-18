import 'package:flutter/material.dart' hide ConnectionState;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/emitters_list/emitters_list_tile.dart';

class EmittersList extends StatelessWidget {
  const EmittersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[400],
        ),
        child: BlocBuilder<ConnectionBloc, ConnectionState>(
          builder: (context, state) {
            return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
              builder: (context, formState) {
                return Column(
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
                          onPressed: () {
                            if (formState.connectionKey != null) {
                              context
                                  .read<ConnectionFormBloc>()
                                  .add(const ConnectionFormEvent.addEvent(
                                    type: EventType.emitter,
                                  ));
                            }
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    Expanded(
                      child: formState.connectionKey != null &&
                              formState.connectionFormData != null
                          ? state.connections[formState.connectionKey]
                                  .eventEmitters.isNotEmpty
                              ? ListView.separated(
                                  itemCount: state
                                      .connections[formState.connectionKey]
                                      .eventEmitters
                                      .length,
                                  itemBuilder: (context, index) {
                                    return EmittersListTile(
                                      emitterIndex: index,
                                    );
                                  },
                                  separatorBuilder: (_, __) => kHeight,
                                )
                              : const Center(
                                  child: SizedBox(
                                    width: 300,
                                    child: Text(
                                      'Oops! It seems like there are no event emitters available.',
                                    ),
                                  ),
                                )
                          : const Center(
                              child: SizedBox(
                                width: 300,
                                child: Text(
                                  'Select a connection or save this connection to work with events.',
                                ),
                              ),
                            ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
