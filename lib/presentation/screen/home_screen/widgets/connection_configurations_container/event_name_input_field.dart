import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/event/event_form/event_form_bloc.dart';

class EventNameInputField extends HookWidget {
  const EventNameInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<EventFormBloc, EventFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) =>
          controller.text = state.eventFormData.name.value.getOrElse(() => ""),
      buildWhen: (p, c) =>
          p.showValidationError != c.showValidationError &&
          p.eventFormData != c.eventKey,
      builder: (context, state) {
        if (!state.showValidationError || state.eventKey != null) {
          controller.text = state.eventFormData.name.value.getOrElse(() => "");
        }

        return SizedBox(
          width: 200,
          height: 30,
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 8,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Event name',
            ),
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            validator: (_) => context
                .read<EventFormBloc>()
                .state
                .eventFormData
                .name
                .value
                .fold(
                  (l) => l.maybeMap(
                    empty: (_) => "Event name can't be empty.",
                    invalid: (_) => "Invalid event name.",
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
          ),
        );
      },
    );
  }
}
