import 'package:flutter/material.dart';
import 'package:vk_shopping/pages/commonPage.dart';
import 'package:vk_shopping/widgets/assets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Replace the delay duration and route with your own
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => YourMainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Customize your splash screen UI here
      body: Center(
        child: Image.asset(appLogo),
      ),
    );
  }
}
