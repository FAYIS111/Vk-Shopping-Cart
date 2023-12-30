import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class NutsSection extends StatefulWidget {
  const NutsSection({super.key});

  @override
  State<NutsSection> createState() => _NutsSectionState();
}

class _NutsSectionState extends State<NutsSection> {
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
              contantText: 'Mix Nuts \n ',
              description: 'Rs:',
              itemRs: 150,
              avatarImage: nuts1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Badam \n ',
              description: 'Rs:',
              itemRs: 110,
              avatarImage: nuts2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Pista \n ',
              description: 'Rs:',
              itemRs: 200,
              avatarImage: nuts3,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Cassue&Pista \n ',
              description: 'Rs:',
              itemRs: 155,
              avatarImage: nuts4,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: ' CassueMix\n ',
              description: 'Rs:',
              itemRs: 255,
              avatarImage: nuts5,
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
