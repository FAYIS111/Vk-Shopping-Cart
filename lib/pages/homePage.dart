import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];
const colorizeTextstyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildColorizeAnimation(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 153, 145, 145),
                    width: 4,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 187, 179, 179),
                      spreadRadius: 8,
                      blurRadius: 5,
                    ),
                  ]),
              width: 300,
              height: 200,
              child: Image.asset(
                appLogo,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100,
              width: 250,
              child: NeumorphicButton(
                buttonText: "BUY NOW",
                buttonAction: () {
                  Navigator.pushNamed(context, '/mainItemPage');
                },
                fontSize: 18,
              ),
            ),
            Container(
              height: 100,
              width: 250,
              child: NeumorphicButton(
                buttonText: "CONTACT US",
                buttonAction: () {
                  Navigator.pushNamed(context, '/contact');
                },
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildColorizeAnimation() => Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            "WELCOME TO",
            textStyle: colorizeTextstyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            "VK STORE",
            textStyle: colorizeTextstyle,
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
      ),
    );
