import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String labelText;
  TextInputType keyBoard;
  int maxiLength;
  int maxLine;
  AppTextField({
    super.key,
    required this.labelText,
    required this.keyBoard,
    required this.maxiLength,
    required this.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      child: TextField(
        onTap: () {},
        maxLines: maxLine,
        keyboardType: keyBoard,
        maxLength: maxiLength,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.brown,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: Colors.brown,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
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
