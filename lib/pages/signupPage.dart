import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:vk_shopping/widgets/textField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              labelText: 'FULL NAME',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
            ),
            AppTextField(
              labelText: 'EMAIL',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
            ),
            AppTextField(
              labelText: 'PASSWORD',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
            ),
            AppTextField(
              labelText: 'CONFORM PASSWORD',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
            ),
            Container(
              height: 50,
              width: 200,
              child: NeumorphicButton(
                buttonText: 'SUBMIT',
                buttonAction: () {},
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
