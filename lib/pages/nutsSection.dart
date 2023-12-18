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
              contantText: 'Mix Nuts \n Rs:150',
              avatarImage: nuts1,
            ),
            NormalItemCard(
              contantText: 'Badam \n Rs:100',
              avatarImage: nuts2,
            ),
            NormalItemCard(
              contantText: 'Pista \n Rs:200',
              avatarImage: nuts3,
            ),
            NormalItemCard(
              contantText: 'Cassue&Pista \n Rs:155',
              avatarImage: nuts4,
            ),
            NormalItemCard(
              contantText: ' CassueMix\n Rs:250',
              avatarImage: nuts5,
            ),
          ],
        ),
      ),
    );
  }
}
