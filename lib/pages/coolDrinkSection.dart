import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class CoolDrinkSection extends StatefulWidget {
  const CoolDrinkSection({super.key});

  @override
  State<CoolDrinkSection> createState() => _CoolDrinkSectionState();
}

class _CoolDrinkSectionState extends State<CoolDrinkSection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            NormalItemCard(
              contantText: 'Fanta \n ',
              description: 'Rs:',
              itemRs: 25,
              avatarImage: coolDrink3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
                setState(() {});
              },
            ),
            NormalItemCard(
              contantText: 'CocaCola \n ',
              description: 'Rs:',
              itemRs: 40,
              avatarImage: coolDrink2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Pepsi \n ',
              description: 'Rs:',
              itemRs: 25,
              avatarImage: coolDrink5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'SevenUp \n',
              description: 'Rs:',
              itemRs: 30,
              avatarImage: coolDrink6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Sprite \n ',
              description: 'Rs:',
              itemRs: 20,
              avatarImage: coolDrink7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
          ],
        ),
      ),
    );
  }
}
