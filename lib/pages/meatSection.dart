import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
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
            NormalItemCard(
              contantText: 'NormalBeaf \n Rs:120',
              avatarImage: beaf1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PieceBeaf \n Rs:140',
              avatarImage: beaf3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'FlatBeaf \n Rs:115',
              avatarImage: beaf4,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'ChickenChest \n Rs:168',
              avatarImage: beaf5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: ' chickenFull\n Rs:122',
              avatarImage: beaf6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'chickenLeg \n Rs:100',
              avatarImage: beaf7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkSlice \n Rs:224',
              avatarImage: beaf8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkSlice \n Rs:250',
              avatarImage: beaf9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PorkBone \n Rs:220',
              avatarImage: beaf10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'TunaFish \n Rs:110',
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
