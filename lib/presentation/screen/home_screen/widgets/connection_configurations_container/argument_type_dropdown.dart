import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/constants.dart';

class ArgumentTypeDropdown extends StatelessWidget {
  const ArgumentTypeDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionFormBloc, ConnectionFormState>(
      builder: (context, state) {
        return SizedBox(
          height: 30,
          child: DropdownButton<EventDataType>(
            underline: const SizedBox.shrink(),
            items: EventDataType.values.map((EventDataType value) {
              return DropdownMenuItem<EventDataType>(
                value: value,
                child: Text(value.name.toUpperCase()),
              );
            }).toList(),
            value: state.connectionFormData!.eventEmitters[state.emitterIndex!]
                .dataType,
            onChanged: (EventDataType? newValue) {
              if (newValue != null) {
                context
                    .read<ConnectionFormBloc>()
                    .add(ConnectionFormEvent.emitterDataTypeChanged(
                      dataType: newValue,
                    ));
              }
            },
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 14,
            ),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey[800],
            ),
            dropdownColor: Colors.grey[400],
          ),
        );
      },
    );
  }
}
