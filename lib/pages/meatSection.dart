import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class MeatSection extends StatefulWidget {
  const MeatSection({super.key});

  @override
  State<MeatSection> createState() => _MeatSectionState();
}

class _MeatSectionState extends State<MeatSection> {
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
              contantText: 'NormalBeaf \n ',
              description: 'Rs:',
              itemRs: 120,
              avatarImage: beaf1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PieceBeaf \n ',
              description: 'Rs:',
              itemRs: 140,
              avatarImage: beaf3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'FlatBeaf \n ',
              description: 'Rs:',
              itemRs: 115,
              avatarImage: beaf4,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'ChickenChest \n ',
              description: 'Rs:',
              itemRs: 168,
              avatarImage: beaf5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: ' chickenFull\n ',
              description: 'Rs:',
              itemRs: 122,
              avatarImage: beaf6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'chickenLeg \n ',
              description: 'Rs:',
              itemRs: 100,
              avatarImage: beaf7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkSlice \n ',
              description: 'Rs:',
              itemRs: 224,
              avatarImage: beaf8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkSlice \n ',
              description: 'Rs:',
              itemRs: 250,
              avatarImage: beaf9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkBone \n ',
              description: 'Rs:',
              itemRs: 264,
              avatarImage: beaf10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'TunaFish \n ',
              description: 'Rs:',
              itemRs: 110,
              avatarImage: beaf11,
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
