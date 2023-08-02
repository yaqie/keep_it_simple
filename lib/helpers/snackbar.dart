import 'package:flutter/material.dart';

snackBar(BuildContext context,
    {required String? text,
    Color? bgColor,
    bool? isFLoating,
    String? actionLabel,
    VoidCallback? actionPress}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: isFLoating != null
        ? isFLoating
            ? SnackBarBehavior.floating
            : SnackBarBehavior.fixed
        : SnackBarBehavior.fixed,
    backgroundColor: bgColor,
    content: Text(text!),
    action: actionLabel == null
        ? null
        : SnackBarAction(
            label: actionLabel,
            disabledTextColor: Colors.white,
            textColor: Colors.yellow,
            onPressed: actionPress ?? () {},
          ),
  ));
}
