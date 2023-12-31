import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class VegitableSection extends StatefulWidget {
  const VegitableSection({super.key});

  @override
  State<VegitableSection> createState() => _VegitableSectionState();
}

class _VegitableSectionState extends State<VegitableSection> {
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
              contantText: 'L beatrout \n ',
              description: 'Rs:',
              itemRs: 20,
              avatarImage: vegitable1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Cabbege \n ',
              description: 'Rs:',
              itemRs: 35,
              avatarImage: vegitable2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Tomatto \n ',
              description: 'Rs:',
              itemRs: 33,
              avatarImage: vegitable13,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Plumkin \n ',
              description: 'Rs:',
              itemRs: 32,
              avatarImage: vegitable11,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Potato \n ',
              description: 'Rs:',
              itemRs: 28,
              avatarImage: vegitable12,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Ginger \n ',
              description: 'Rs:',
              itemRs: 40,
              avatarImage: vegitable7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'GreenColly \n ',
              description: 'Rs:',
              itemRs: 42,
              avatarImage: vegitable8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Kakkari \n ',
              description: 'Rs:',
              itemRs: 26,
              avatarImage: vegitable9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Onion \n ',
              description: 'Rs:',
              itemRs: 20,
              avatarImage: vegitable10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'CollyFlower \n ',
              description: 'Rs:',
              itemRs: 38,
              avatarImage: vegitable5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'DrumStick \n ',
              description: 'Rs:',
              itemRs: 18,
              avatarImage: vegitable6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Carrot \n ',
              description: 'Rs:',
              itemRs: 52,
              avatarImage: vegitable3,
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
