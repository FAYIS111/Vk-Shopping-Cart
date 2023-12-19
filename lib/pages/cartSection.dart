import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartSection extends StatefulWidget {
  const CartSection({super.key});

  @override
  State<CartSection> createState() => _CartSectionState();
}

class _CartSectionState extends State<CartSection> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: donor.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, Index) {
                    final DocumentSnapshot donorSnap =
                        snapshot.data!.docs[Index];
                    return Container(
                      height: 130,
                      child: Card(
                        color: const Color.fromARGB(255, 230, 223, 223),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.lightGreen,
                                child: Text(
                                  donorSnap['sl'].toString(),
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Text(
                              donorSnap['Name'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  donorSnap['Rs'].toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(donorSnap['Rs'].toString()),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }
            return Container();
          }),
    );
  }
}
