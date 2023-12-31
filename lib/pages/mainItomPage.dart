import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/mainItomCard.dart';

class MainItemPage extends StatefulWidget {
  const MainItemPage({super.key});

  @override
  State<MainItemPage> createState() => _MainItemPageState();
}

class _MainItemPageState extends State<MainItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GROCERY"),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buttonWidget(
                  buttonText: "GO BACK",
                  buttonAction: () {
                    Navigator.pop(context);
                  }),
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/coolDrink');
              },
              cardImage: coolDrinkMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/vegitable');
              },
              cardImage: vegitableMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/fruites');
              },
              cardImage: fruitMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/meats');
              },
              cardImage: meatMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/curryPowder');
              },
              cardImage: curryPowderMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/rise');
              },
              cardImage: riseMainIcon,
            ),
            MainItomCard(
              buttonAction: () {
                Navigator.pushNamed(context, '/nuts');
              },
              cardImage: nutsMainIcon,
            ),
          ],
        ),
      ),
    );
  }
}
