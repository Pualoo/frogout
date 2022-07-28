import 'package:flutter/material.dart';

void createASnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 10),
      content: Text(message),
    ),
  );
}
