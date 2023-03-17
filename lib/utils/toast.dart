import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'navigator.dart';

class ToastUtil {
  static void error(
    String title, {
    String? description,
  }) {
    CherryToast.error(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      displayTitle: true,
      description: description == null ? null : Text(description),
      animationType: AnimationType.fromTop,
      animationDuration: const Duration(milliseconds: 600),
      autoDismiss: true,
      borderRadius: 15,
      enableIconAnimation: false,
    ).show(NavigatorProvider.navigatorContext!);
  }

  static void info(
    String title, {
    String? description,
  }) {
    CherryToast.info(
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      displayTitle: true,
      description: description == null ? null : Text(description),
      animationType: AnimationType.fromTop,
      animationDuration: const Duration(milliseconds: 600),
      autoDismiss: true,
      borderRadius: 15,
      enableIconAnimation: false,
    ).show(NavigatorProvider.navigatorContext!);
  }
}



    // // toast
    