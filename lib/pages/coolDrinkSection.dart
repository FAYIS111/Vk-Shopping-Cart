import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
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
            NormalItemCard(
              contantText: 'Fanta \n Rs:20',
              avatarImage: coolDrink3,
            ),
            NormalItemCard(
              contantText: 'CocaCola \n Rs:40',
              avatarImage: coolDrink2,
            ),
            NormalItemCard(
              contantText: 'Pepsi \n Rs:25',
              avatarImage: coolDrink5,
            ),
            NormalItemCard(
              contantText: 'SevenUp \n Rs:30',
              avatarImage: coolDrink6,
            ),
            NormalItemCard(
              contantText: 'Sprite \n Rs:20',
              avatarImage: coolDrink7,
            ),
          ],
        ),
      ),
    );
  }
}
