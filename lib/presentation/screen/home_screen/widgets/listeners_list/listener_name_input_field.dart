import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';

class ListenerNameInputField extends HookWidget {
  const ListenerNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Flexible(
      child: SizedBox(
        height: 24,
        child: BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
          listenWhen: (p, c) => p.showValidationError != c.showValidationError,
          listener: (context, state) => controller.text = state
                  .connectionFormData
                  ?.eventListeners[state.listenerIndex!]
                  .name
                  .value
                  .getOrElse(() => "") ??
              "",
          buildWhen: (p, c) =>
              p.showValidationError != c.showValidationError &&
              p.listenerIndex != c.listenerIndex,
          builder: (context, state) {
            if (!state.showValidationError || state.listenerIndex != null) {
              controller.text = state.connectionFormData
                      ?.eventListeners[state.listenerIndex!].name.value
                      .getOrElse(() => "") ??
                  "";
            }

            return IntrinsicWidth(
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 4),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.lightBlue,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () => controller.selection = TextSelection(
                  baseOffset: 0,
                  extentOffset: controller.text.length,
                ),
                onTapOutside: (_) => context
                    .read<ConnectionFormBloc>()
                    .add(const ConnectionFormEvent.unSelectListener()),
                autofocus: true,
                autovalidateMode: state.showValidationError
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                validator: (_) => context
                    .read<ConnectionFormBloc>()
                    .state
                    .connectionFormData
                    ?.eventListeners[state.listenerIndex!]
                    .name
                    .value
                    .fold(
                      (l) => l.maybeMap(
                        empty: (_) => "Listener name can't be empty.",
                        invalid: (_) => "Invalid connection name.",
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                onChanged: (name) => context
                    .read<ConnectionFormBloc>()
                    .add(ConnectionFormEvent.listenerNameChanged(name: name)),
              ),
            );
          },
        ),
      ),
    );
  }
}
