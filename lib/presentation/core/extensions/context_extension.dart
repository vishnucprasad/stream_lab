import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

extension ContextX on BuildContext {
  void showSuccessToast({
    required String message,
  }) {
    toastification.show(
      context: this,
      icon: const Icon(Icons.check_circle),
      title: const Text('Success!'),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      primaryColor: Colors.green,
      backgroundColor: Colors.green.withOpacity(0.25),
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomRight,
    );
  }

  void showInfoToast({
    required String message,
  }) {
    toastification.show(
      context: this,
      icon: const Icon(Icons.info),
      title: const Text('Info'),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      primaryColor: Colors.lightBlue,
      backgroundColor: Colors.lightBlue.withOpacity(0.25),
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomRight,
    );
  }

  void showWarningToast({
    required String message,
  }) {
    toastification.show(
      context: this,
      icon: const Icon(Icons.warning),
      title: const Text('Warning!'),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      primaryColor: Colors.yellow[700],
      backgroundColor: Colors.yellow[700]?.withOpacity(0.25),
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomRight,
    );
  }

  void showErrorToast({
    required String message,
  }) {
    toastification.show(
      context: this,
      icon: const Icon(Icons.error),
      title: const Text('Error!'),
      description: Text(message),
      style: ToastificationStyle.flatColored,
      primaryColor: Theme.of(this).colorScheme.error,
      backgroundColor: Theme.of(this).colorScheme.error.withOpacity(0.25),
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomRight,
    );
  }

  void showDialog({
    required DialogType dialogType,
    required String title,
    required String message,
    required void Function()? onConfirm,
    required void Function()? onDismiss,
    String? confirmButtonText,
    String? dismissButtonText,
  }) {
    AwesomeDialog(
      width: 480,
      context: this,
      dialogType: dialogType,
      animType: AnimType.rightSlide,
      title: title,
      desc: message,
      btnOkText: confirmButtonText,
      btnCancelText: dismissButtonText,
      btnOkOnPress: onConfirm,
      btnCancelOnPress: onDismiss,
    ).show();
  }
}
