import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  final void Function() buttonAction;
  final IconData? buttonIcon;
  final Color? iconColor;
  const IconWidget({
    super.key,
    required this.buttonAction,
    required this.buttonIcon,
    this.iconColor,
  });

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          widget.buttonAction();
        },
        icon: Icon(widget.buttonIcon),
        color: widget.iconColor,
      ),
    );
  }
}
