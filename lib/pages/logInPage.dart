import 'package:flutter/material.dart';

import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:vk_shopping/widgets/textField.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: AppTextField(
                labelText: "USER NAME",
                keyBoard: TextInputType.name,
                maxiLength: 200,
                maxLine: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: AppTextField(
                labelText: "PASS WORD",
                keyBoard: TextInputType.name,
                maxiLength: 10,
                maxLine: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 200,
                height: 50,
                child: NeumorphicButton(
                  buttonText: "LOG IN",
                  buttonAction: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 50,
              child: NeumorphicButton(
                buttonText: "SIGN IN",
                buttonAction: () {
                  Navigator.pushNamed(context, '/signUp');
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
