import 'package:flutter/material.dart';

void showSnakBar(BuildContext context, Widget content, {Color? bgColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: content,
      backgroundColor: bgColor ?? Colors.black,
    ),
  );
}

void showSnakBarSuccess(BuildContext context, String message) {
  showSnakBar(
    bgColor: Colors.green[400],
    context,
    Text(message, style: Theme.of(context).textTheme.headlineMedium),
  );
}

void showSnakBarInfo(BuildContext context, String message) {
  showSnakBar(
    bgColor: Colors.blue[200],
    context,
    Text(message, style: Theme.of(context).textTheme.headlineMedium),
  );
}
