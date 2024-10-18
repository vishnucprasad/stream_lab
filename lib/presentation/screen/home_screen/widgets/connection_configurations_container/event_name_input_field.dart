import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';

class EventNameInputField extends HookWidget {
  const EventNameInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) => controller.text = state
              .connectionFormData?.eventEmitters[state.emitterIndex!].name.value
              .getOrElse(() => "") ??
          "",
      buildWhen: (p, c) =>
          p.showValidationError != c.showValidationError &&
          p.emitterIndex != c.emitterIndex,
      builder: (context, state) {
        if (!state.showValidationError || state.emitterIndex != null) {
          controller.text = state.connectionFormData
                  ?.eventEmitters[state.emitterIndex!].name.value
                  .getOrElse(() => "") ??
              "";
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
                .read<ConnectionFormBloc>()
                .state
                .connectionFormData
                ?.eventEmitters[state.emitterIndex!]
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
            onTap: () => controller.selection = TextSelection(
              baseOffset: 0,
              extentOffset: controller.text.length,
            ),
            onChanged: (name) => context
                .read<ConnectionFormBloc>()
                .add(ConnectionFormEvent.emitterNameChanged(name: name)),
          ),
        );
      },
    );
  }
}
