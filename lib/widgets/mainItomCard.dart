import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';

class MainItomCard extends StatefulWidget {
  final void Function() buttonAction;
  final String cardImage;
  const MainItomCard(
      {super.key, required this.buttonAction, required this.cardImage});

  @override
  State<MainItomCard> createState() => _MainItomCardState();
}

class _MainItomCardState extends State<MainItomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Card(
        shadowColor: Colors.grey,
        elevation: 10,
        child: Container(
          width: double.infinity,
          height: 340,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(widget.cardImage),
              ),
              Container(
                height: 50,
                width: 200,
                child: NeumorphicButton(
                  buttonText: "ADD TO CART",
                  buttonAction: () {
                    widget.buttonAction();
                  },
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
