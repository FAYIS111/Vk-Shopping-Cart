import 'package:flutter/material.dart';
import 'package:vk_shopping/pages/logInPage.dart';
import 'package:vk_shopping/pages/splashScreen.dart';

class CommonPage extends StatefulWidget {
  const CommonPage({super.key});

  @override
  State<CommonPage> createState() => _CommonPageState();
}

class _CommonPageState extends State<CommonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SplashScreen(),
      ),
    );
  }
}

class YourMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: const LogInPage(),
      ),
    );
  }
}
