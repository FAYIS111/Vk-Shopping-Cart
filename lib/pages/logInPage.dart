import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vk_shopping/pages/signupPage.dart';
import 'package:vk_shopping/pages/wrapperPage.dart';

import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:vk_shopping/widgets/textField.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      Get.offAll(WrapperPage());
    } catch (e) {
      if (e is FirebaseAuthException) {
        // Handle specific Firebase Authentication exceptions here
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sign In Failed'),
              content: Text('${e.message}'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        // Handle other exceptions here
        print('Error occurred: $e');
      }
    }
  }

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
                labelText: "Email",
                keyBoard: TextInputType.name,
                maxiLength: 200,
                maxLine: 1,
                controler: email,
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
                controler: password,
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
                    signIn();
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
                  Get.to(SignInPage());
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
