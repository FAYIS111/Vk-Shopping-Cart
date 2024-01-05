import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vk_shopping/widgets/iconButton.dart';
import 'package:vk_shopping/widgets/totalSum.dart';

class CartSection extends StatefulWidget {
  const CartSection({super.key});

  @override
  State<CartSection> createState() => _CartSectionState();
}

class _CartSectionState extends State<CartSection> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');
  void deleteDonor(docId) {
    donor.doc(docId).delete();
  }

  double totalSum = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: StreamBuilder(
            stream: donor.snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length + 1,
                    itemBuilder: (context, Index) {
                      if (Index == snapshot.data!.docs.length) {
                        // This block handles the extra Card widget
                        return Container(
                          height: 250,
                          child: Card(
                            // Customize the properties of the additional card here
                            color:
                                Colors.grey.shade200, // Change color as needed
                            elevation: 5, // Adjust elevation if necessary
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      'TOTAL AMOUNT',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      width: 150,
                                      height: 80,
                                      child: const SingleChildScrollView(
                                        child: TotalSum(),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.greenAccent)),
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, "/final");
                                    },
                                    child: const Text(
                                      "CONFORM BUY",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.greenAccent),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      "GO BACK",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      } else {
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
                                Container(
                                  width: 150,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      donorSnap['Name'],
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      color: Colors.white,
                                      width: 100,
                                      height: 40,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            const Text("Total Count"),
                                            Text(donorSnap['Rs'].toString()),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: Container(
                                        color: Colors.white,
                                        width: 100,
                                        height: 40,
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Text("Total Rs"),
                                              Text(donorSnap['sl'].toString()),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                IconWidget(
                                  buttonAction: () {
                                    setState(() {
                                      Navigator.pushNamed(context, '/update',
                                          arguments: {
                                            "Name": donorSnap["Name"],
                                            "rs": donorSnap["Rs"],
                                            "sl": donorSnap["sl"],
                                            "itemrs": donorSnap["itemRs"],
                                            "id": donorSnap.id,
                                          });
                                    });
                                  },
                                  buttonIcon: Icons.edit,
                                  iconColor: Colors.blue,
                                ),
                                IconWidget(
                                  buttonAction: () {
                                    deleteDonor(donorSnap.id);
                                  },
                                  buttonIcon: Icons.delete,
                                  iconColor: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    });
              }
              return const Text("NO ORDER IN CART");
            }),
      ),
    );
  }
}
