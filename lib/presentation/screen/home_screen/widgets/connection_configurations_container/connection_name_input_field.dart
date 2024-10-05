import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';

class ConnectionNameInputField extends HookWidget {
  const ConnectionNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Flexible(
      child: SizedBox(
        height: 24,
        child: BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
          listenWhen: (p, c) => p.showValidationError != c.showValidationError,
          listener: (context, state) => controller.text =
              state.connectionFormData.connectionName.value.getOrElse(() => ""),
          buildWhen: (p, c) =>
              p.showValidationError != c.showValidationError ||
              p.connectionKey != c.connectionKey,
          builder: (context, state) {
            if (!state.showValidationError || state.connectionKey != null) {
              controller.value = TextEditingValue(
                text: state.connectionFormData.connectionName.value
                    .getOrElse(() => ""),
                selection: TextSelection(
                  baseOffset: 0,
                  extentOffset: controller.text.length,
                ),
              );
            }
            return TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              onTap: () => controller.selection = TextSelection(
                baseOffset: 0,
                extentOffset: controller.text.length,
              ),
              autovalidateMode: state.showValidationError
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              validator: (_) => context
                  .read<ConnectionFormBloc>()
                  .state
                  .connectionFormData
                  .connectionName
                  .value
                  .fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Connection name can't be empty.",
                      invalid: (_) => "Invalid connection name.",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
              onChanged: (value) => context
                  .read<ConnectionFormBloc>()
                  .add(ConnectionFormEvent.connectionNameChanged(
                    connectionName: value,
                  )),
            );
          },
        ),
      ),
    );
  }
}
