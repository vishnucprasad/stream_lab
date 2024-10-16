import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/presentation/core/constants.dart';
import 'package:stream_lab/presentation/screen/home_screen/widgets/listeners_list/listener_name_input_field.dart';

class ListenersListTile extends StatelessWidget {
  const ListenersListTile({
    super.key,
    required this.listenerIndex,
  });

  final int listenerIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        final listener =
            state.connectionFormData?.eventListeners[listenerIndex];

        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    kWidth,
                    const Icon(
                      Icons.arrow_circle_down,
                      color: Colors.orange,
                    ),
                    kWidth,
                    Transform.scale(
                      scale: 0.75,
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Switch(
                          value: true,
                          onChanged: (value) {},
                          thumbColor: WidgetStatePropertyAll<Color?>(
                            Colors.grey[200],
                          ),
                          activeTrackColor: Colors.orange,
                          trackOutlineColor: const WidgetStatePropertyAll(
                            Colors.transparent,
                          ),
                          inactiveTrackColor: Colors.grey[400],
                        ),
                      ),
                    ),
                    kWidth,
                    state.listenerIndex == listenerIndex
                        ? const ListenerNameInputField()
                        : MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () => context
                                  .read<ConnectionFormBloc>()
                                  .add(ConnectionFormEvent.listenerSelected(
                                    listenerIndex: listenerIndex,
                                  )),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.transparent, // No fill color
                                  border: Border.all(
                                    color: Colors.orange,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      4), // Rounded corners
                                ),
                                child: Text(
                                  listener?.name.getOrCrash(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
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
        );
      },
    );
  }
}
