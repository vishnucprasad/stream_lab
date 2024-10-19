import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';
import 'package:stream_lab/core/constants.dart';

class TextDataInputField extends HookWidget {
  const TextDataInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.connectionFormData
                ?.eventEmitters[state.emitterIndex!].data?.value
                .getOrElse(() => "") ??
            "";
      },
      buildWhen: (p, c) =>
          p.showValidationError != c.showValidationError ||
          p.emitterIndex != c.emitterIndex,
      builder: (context, state) {
        final emitter =
            state.connectionFormData?.eventEmitters[state.emitterIndex!];

        if (emitter?.dataType == EventDataType.text && emitter?.data != null) {
          controller.value = controller.value.copyWith(
            text: emitter?.data?.getOrCrash(),
            selection: TextSelection.collapsed(
              offset: emitter?.data?.getOrCrash().length,
            ),
          );
        }

        return TextFormField(
          controller: controller,
          minLines: 10,
          maxLines: 15,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            hintText: 'Enter your TEXT data',
          ),
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<ConnectionFormBloc>()
              .state
              .connectionFormData
              ?.eventEmitters[state.emitterIndex!]
              .data
              ?.value
              .fold(
                (l) => l.maybeMap(
                  empty: (_) => "This data can't be empty.",
                  orElse: () => null,
                ),
                (r) => null,
              ),
          onChanged: (value) => context
              .read<ConnectionFormBloc>()
              .add(ConnectionFormEvent.emitterDataChanged(data: value)),
        );
      },
    );
  }
}
