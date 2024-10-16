import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/constants.dart';
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
        child: BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
          builder: (context, state) {
            return Column(
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
                      onPressed: () => context
                          .read<ConnectionFormBloc>()
                          .add(const ConnectionFormEvent.addEvent(
                            type: EventType.listener,
                          )),
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
                Expanded(
                  child: state.connectionKey != null &&
                          state.connectionFormData != null
                      ? state.connectionFormData!.eventListeners.isNotEmpty
                          ? ListView.separated(
                              itemCount: state
                                  .connectionFormData!.eventListeners.length,
                              itemBuilder: (context, index) {
                                return ListenersListTile(
                                  listenerIndex: index,
                                );
                              },
                              separatorBuilder: (_, __) => kHeight,
                            )
                          : const Center(
                              child: SizedBox(
                                width: 300,
                                child: Text(
                                  'Oops! It seems like there are no event listeners available.',
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
