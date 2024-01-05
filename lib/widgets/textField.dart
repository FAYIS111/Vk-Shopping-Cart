import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  String labelText;
  TextInputType keyBoard;
  int maxiLength;
  int maxLine;
  TextEditingController? controler;
  AppTextField({
    super.key,
    required this.labelText,
    required this.keyBoard,
    required this.maxiLength,
    required this.maxLine,
    required this.controler,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: TextField(
        controller: controler,
        onTap: () {},
        maxLines: maxLine,
        keyboardType: keyBoard,
        maxLength: maxiLength,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.brown,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.brown,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
