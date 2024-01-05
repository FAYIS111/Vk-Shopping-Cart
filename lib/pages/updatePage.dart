import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:vk_shopping/widgets/buttonWidget.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');

  void updateItem(String docId, double? multipliedValue) {
    if (selectedValue != null) {
      final data = {
        "Rs": selectedValue!,
        "sl": multipliedValue,
      };

      donor.doc(docId).update(data).then((_) {
        print("Document updated successfully!");
        // Perform any additional actions after update if needed
      }).catchError((error) {
        print("Error updating document: $error");
        // Handle errors during update if necessary
      });
    } else {
      print("Selected value is null. Cannot perform the update operation.");
    }
  }

  final List<double> items = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  double? selectedValue;

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String itemName = args["Name"];
    double? itemCount = args["rs"] ?? 0;
    double? itemRs = args["itemrs"] ?? 0;
    double? totalAmount = args["sl"] ?? 0;
    final docId = args["id"];

    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    itemName,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 100,
                    color: Colors.orange,
                    child: Container(
                      width: 80,
                      height: 60,
                      color: Colors.grey.shade200,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<double>(
                          isExpanded: true,
                          items: items
                              .map((double item) => DropdownMenuItem<double>(
                                    value: item,
                                    child: Text(
                                      item.toString(),
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (double? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 60,
                            width: 200,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: buttonWidget(
                  buttonText: "UPDATE",
                  buttonAction: () {
                    double? multipliedValue;
                    setState(() {
                      if (itemRs != null && selectedValue != null) {
                        multipliedValue = itemRs * selectedValue!;
                      } else {
                        multipliedValue = 0;
                      }
                      updateItem(docId, multipliedValue);
                      Navigator.pop(context);
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: buttonWidget(
                  buttonText: "GO BACK",
                  buttonAction: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
