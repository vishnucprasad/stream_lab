import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/constants.dart';
import 'package:stream_lab/domain/connection/models/connection.dart';
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
        child: BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
          builder: (context, state) {
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
                        if (state.connectionKey != null) {
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
                  child: state.connectionKey != null
                      ? state.connectionFormData.eventEmitters.isNotEmpty
                          ? ListView.separated(
                              itemCount: Connection.fromDomain(
                                      state.connectionFormData)
                                  .eventEmitters
                                  .length,
                              itemBuilder: (context, index) {
                                return EmittersListTile(
                                  event: Connection.fromDomain(
                                    state.connectionFormData,
                                  ).eventEmitters[index],
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
        ),
      ),
    );
  }
}
