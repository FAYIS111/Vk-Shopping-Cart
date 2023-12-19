import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class RiseSection extends StatefulWidget {
  const RiseSection({super.key});

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
            NormalItemCard(
              contantText: 'Pachari \n Rs:55',
              avatarImage: rise1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'S rise \n Rs:60',
              avatarImage: rise2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'NormaiRise \n Rs:40',
              avatarImage: rise3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'GeeRise \n Rs:110',
              avatarImage: rise5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BiriyaniRise \n Rs:120',
              avatarImage: rise6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BrownRise \n Rs:71',
              avatarImage: rise8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Rise \n Rs:55',
              avatarImage: rise9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'SmallRise \n Rs:65',
              avatarImage: rise10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'N Rise \n Rs:35',
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
