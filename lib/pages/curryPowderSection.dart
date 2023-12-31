import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buttonWidget(
                  buttonText: "GO BACK",
                  buttonAction: () {
                    Navigator.pop(context);
                  }),
            ),
            NormalItemCard(
              contantText: 'RedChilliPowder \n ',
              description: 'Rs:',
              itemRs: 20,
              avatarImage: curryPowder1,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'Chiili Flakes \n ',
              description: 'Rs:',
              itemRs: 52,
              avatarImage: curryPowder2,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'ManjalPodi \n ',
              description: 'Rs:',
              itemRs: 40,
              avatarImage: curryPowder4,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'PepperPowder \n ',
              description: 'Rs:',
              itemRs: 45,
              avatarImage: curryPowder5,
              buttonActions: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            NormalItemCard(
              contantText: 'BrownChilli \n ',
              description: 'Rs:',
              itemRs: 35,
              avatarImage: curryPowder6,
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
