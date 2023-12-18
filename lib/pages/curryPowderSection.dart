import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/normalItemCard.dart';

class CurryPowderSection extends StatefulWidget {
  const CurryPowderSection({super.key});

  @override
  State<CurryPowderSection> createState() => _CurryPowderSectionState();
}

class _CurryPowderSectionState extends State<CurryPowderSection> {
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
              contantText: 'RedChilliPowder \n Rs:20',
              avatarImage: curryPowder1,
            ),
            NormalItemCard(
              contantText: 'Chiili Flakes \n Rs:51',
              avatarImage: curryPowder2,
            ),
            NormalItemCard(
              contantText: 'ManjalPodi \n Rs:40',
              avatarImage: curryPowder4,
            ),
            NormalItemCard(
              contantText: 'PepperPowder \n Rs:45',
              avatarImage: curryPowder5,
            ),
            NormalItemCard(
              contantText: 'BrownChilli \n Rs:30',
              avatarImage: curryPowder6,
            ),
          ],
        ),
      ),
    );
  }
}
