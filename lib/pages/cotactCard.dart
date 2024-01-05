import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';
import 'package:vk_shopping/widgets/textField.dart';

class ContactCard extends StatefulWidget {
  const ContactCard({super.key});

  @override
  State<ContactCard> createState() => _ContactCardState();
}

TextEditingController suggession = TextEditingController();

class _ContactCardState extends State<ContactCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 350,
                color: Colors.grey.shade300,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "VK STORE",
                      style: TextStyle(
                        color: Color.fromRGBO(235, 79, 6, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Place: Malappuram\nOwner: Muhammed Faisal V\nMob NO:9847959648\nTime: 8 AM - 9 PM',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                  labelText: "SUGGESSION BOX",
                  keyBoard: TextInputType.name,
                  maxiLength: 1000,
                  maxLine: 8,
                  controler: suggession),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: buttonWidget(
                  buttonText: "SUBMIT",
                  buttonAction: () {
                    Navigator.pop(context);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
