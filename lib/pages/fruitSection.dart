import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class FruitSection extends StatefulWidget {
  const FruitSection({super.key});

  @override
  State<FruitSection> createState() => _FruitSectionState();
}

class _FruitSectionState extends State<FruitSection> {
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
              contantText: 'Apple \n Rs:60',
              avatarImage: fruit1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Banana \n Rs:33',
              avatarImage: fruit2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BlackBerry \n Rs:85',
              avatarImage: fruit3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'DragonFruit \n Rs:45',
              avatarImage: fruit4,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'GreenApple \n Rs:54',
              avatarImage: fruit6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Kiwi \n Rs:88',
              avatarImage: fruit7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Orange \n Rs:35',
              avatarImage: fruit8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Madhalam \n Rs:40',
              avatarImage: fruit9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Pinapple \n Rs:33',
              avatarImage: fruit10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Ruman \n Rs:60',
              avatarImage: fruit11,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Rambutan \n Rs:75',
              avatarImage: fruit12,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Straberry \n Rs:48',
              avatarImage: fruit13,
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
