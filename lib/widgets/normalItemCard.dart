import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/assets.dart';
import 'package:vk_shopping/widgets/neumorphicButton.dart';

class NormalItemCard extends StatefulWidget {
  final String contantText;
  final String avatarImage;
  final void Function() buttonActions;
  const NormalItemCard({
    super.key,
    required this.contantText,
    required this.avatarImage,
    required this.buttonActions,
  });

  @override
  State<NormalItemCard> createState() => _NormalItemCardState();
}

class _NormalItemCardState extends State<NormalItemCard> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');

  @override
  Widget build(BuildContext context) {
    final totalItems = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
    String? selectedItems;

    void addData() {
      final data = {
        'Name': widget.contantText,
        'sl': 1,
        'Rs': selectedItems,
      };
      donor.add(data);
    }

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
              widget.contantText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.white,
                  child: Container(
                    width: 30,
                    height: 30,
                    child: DropdownButtonFormField(
                        items: totalItems
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (variab) {
                          selectedItems = variab;
                        }),
                  ),
                ),
                Container(
                  width: 100,
                  height: 45,
                  child: NeumorphicButton(
                    buttonText: 'ADD TO CART',
                    buttonAction: () {
                      widget.buttonActions();
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
