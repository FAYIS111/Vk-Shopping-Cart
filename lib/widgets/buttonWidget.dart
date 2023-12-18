import 'package:flutter/material.dart';

Widget buttonWidget({
  required String buttonText,
  required void Function() buttonAction,
}) {
  return Container(
    width: double.infinity,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 107, 219, 111)),
      ),
      onPressed: buttonAction,
      child: Text(buttonText),
    ),
  );
}
