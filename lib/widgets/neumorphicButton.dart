import 'package:flutter/material.dart';

class NeumorphicButton extends StatefulWidget {
  final String buttonText;
  final void Function()? buttonAction;
  final double fontSize;
  NeumorphicButton({
    super.key,
    required this.buttonText,
    required this.buttonAction,
    required this.fontSize,
  });

  @override
  State<NeumorphicButton> createState() => _NeumorphicButtonState();
}

class _NeumorphicButtonState extends State<NeumorphicButton> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: GestureDetector(
          onTap: () {
            widget.buttonAction!();
          },
          onTapDown: (_) => setState(() => _isButtonPressed = true),
          onTapUp: (_) => setState(
            () => _isButtonPressed = false,
          ),
          onTapCancel: () => setState(() => _isButtonPressed = false),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 120),
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: _isButtonPressed
                      ? Colors.grey.shade200
                      : Colors.grey.shade300),
              boxShadow: _isButtonPressed
                  ? []
                  : [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(2, 2),
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2, -2),
                        blurRadius: 7,
                        spreadRadius: 1,
                      ),
                    ],
            ),
            child: Center(
              child: Text(
                widget.buttonText,
                style: TextStyle(
                  fontSize: widget.fontSize,
                  fontWeight: FontWeight.bold,
                  color: _isButtonPressed
                      ? Colors.grey.shade500
                      : Colors.lightBlue,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
