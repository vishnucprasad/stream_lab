import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stream_lab/application/connection/connection_form/connection_form_bloc.dart';

class ConnectionUrlInputField extends HookWidget {
  const ConnectionUrlInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return Flexible(
      child: BlocConsumer<ConnectionFormBloc, ConnectionFormState>(
        listenWhen: (p, c) => p.showValidationError != c.showValidationError,
        listener: (context, state) => controller.text =
            state.connectionFormData.connectionUrl.value.getOrElse(() => ""),
        buildWhen: (p, c) =>
            p.showValidationError != c.showValidationError ||
            p.connectionKey != c.connectionKey,
        builder: (context, state) {
          if (!state.showValidationError || state.connectionKey != null) {
            controller.text = state.connectionFormData.connectionUrl.value
                .getOrElse(() => "");
          }

          return TextFormField(
            controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 8,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Enter URL',
            ),
            autovalidateMode: state.showValidationError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            validator: (_) => context
                .read<ConnectionFormBloc>()
                .state
                .connectionFormData
                .connectionUrl
                .value
                .fold(
                  (l) => l.maybeMap(
                    empty: (_) => "Connection URL can't be empty.",
                    invalidURL: (_) => "Invalid connection URL.",
                    orElse: () => null,
                  ),
                  (r) => null,
                ),
            onChanged: (value) => context
                .read<ConnectionFormBloc>()
                .add(ConnectionFormEvent.connectionUrlChanged(
                  connectionUrl: value,
                )),
          );
        },
      ),
    );
  }
}
