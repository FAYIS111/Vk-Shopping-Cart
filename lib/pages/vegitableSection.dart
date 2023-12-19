import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
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
            NormalItemCard(
              contantText: 'L beatrout \n Rs:20',
              avatarImage: vegitable1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Cabbege \n Rs:30',
              avatarImage: vegitable2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Tomatto \n Rs:33',
              avatarImage: vegitable13,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Plumkin \n Rs:32',
              avatarImage: vegitable11,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Potato \n Rs:28',
              avatarImage: vegitable12,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Ginger \n Rs:40',
              avatarImage: vegitable7,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'GreenColly \n Rs:40',
              avatarImage: vegitable8,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Kakkari \n Rs:26',
              avatarImage: vegitable9,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Onion \n Rs:20',
              avatarImage: vegitable10,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'CollyFlower \n Rs:38',
              avatarImage: vegitable5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'DrumStick \n Rs:18',
              avatarImage: vegitable6,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Carrot \n Rs:52',
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
