import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class NormalItemCard extends StatefulWidget {
  final String contantText;
  final String avatarImage;
  final void Function() buttonActions;
  final double? itemRs;
  final String? description;

  const NormalItemCard({
    super.key,
    required this.contantText,
    required this.avatarImage,
    required this.buttonActions,
    this.itemRs,
    this.description,
  });

  @override
  State<NormalItemCard> createState() => _NormalItemCardState();
}

class _NormalItemCardState extends State<NormalItemCard> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');
  final List<double> items = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];
  double? selectedValue;
  double? totalAmount;

  @override
  Widget build(BuildContext context) {
    void addData() {
      final data = {
        'Name': widget.contantText,
        'sl': totalAmount,
        'Rs': selectedValue,
        'dis': widget.description,
      };
      donor.add(data);
    }

    double? counts = widget.itemRs;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        shadowColor: Colors.grey,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(widget.avatarImage),
              ),
            ),
            Text(
              widget.contantText +
                  widget.description.toString() +
                  widget.itemRs.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Container(
                  width: 80,
                  height: 60,
                  color: Colors.white,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<double>(
                      isExpanded: true,
                      items: items
                          .map((double item) => DropdownMenuItem<double>(
                                value: item,
                                child: Text(
                                  item.toString(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
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
                Container(
                  width: 100,
                  height: 45,
                  child: NeumorphicButton(
                    buttonText: 'ADD TO CART',
                    buttonAction: () {
                      widget.buttonActions();

                      setState(() {
                        if (counts != null && selectedValue != null) {
                          totalAmount = counts * selectedValue!;
                        } else {
                          totalAmount = 0;
                        }
                      });
                      addData();
                    },
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
