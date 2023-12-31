import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class RiseSection extends StatefulWidget {
  RiseSection({
    super.key,
  });

  @override
  State<RiseSection> createState() => _RiseSectionState();
}

class _RiseSectionState extends State<RiseSection> {
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
              contantText: 'Pachari \n ',
              description: 'Rs:',
              itemRs: 55,
              avatarImage: rise1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'S rise \n ',
              description: 'Rs:',
              itemRs: 65,
              avatarImage: rise2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'NormaiRise \n ',
              description: 'Rs:',
              itemRs: 40,
              avatarImage: rise3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'GeeRise \n ',
              description: 'Rs:',
              itemRs: 110,
              avatarImage: rise5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BiriyaniRise \n ',
              description: 'Rs:',
              itemRs: 120,
              avatarImage: rise6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BrownRise \n ',
              description: 'Rs:',
              itemRs: 71,
              avatarImage: rise8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Rise \n ',
              description: 'Rs:',
              itemRs: 55,
              avatarImage: rise9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'SmallRise \n ',
              description: 'Rs:',
              itemRs: 65,
              avatarImage: rise10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'N Rise \n ',
              description: 'Rs:',
              itemRs: 35,
              avatarImage: rise11,
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
