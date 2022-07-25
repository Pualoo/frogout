import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void createASnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 10),
      content: Text(message),
    ),
  );
}
