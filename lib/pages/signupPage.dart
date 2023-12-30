import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vk_shopping/pages/wrapperPage.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:vk_shopping/widgets/textField.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      // If sign-up is successful, navigate to the Wrapper or next screen
      Get.offAll(WrapperPage());
    } catch (e) {
      if (e is FirebaseAuthException) {
        // Handle specific Firebase Authentication exceptions here
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Sign Up Failed'),
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
      body: Container(
        color: Colors.grey.shade300,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              labelText: 'EMAIL',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
              controler: email,
            ),
            AppTextField(
              labelText: 'PASSWORD',
              keyBoard: TextInputType.name,
              maxiLength: 200,
              maxLine: 1,
              controler: password,
            ),
            Container(
              height: 50,
              width: 200,
              child: NeumorphicButton(
                buttonText: 'SUBMIT',
                buttonAction: () {
                  signUp();
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
