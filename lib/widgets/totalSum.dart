import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class TotalSum extends StatefulWidget {
  const TotalSum({Key? key}) : super(key: key);

  @override
  State<TotalSum> createState() => _TotalSumState();
}

class _TotalSumState extends State<TotalSum> {
  final CollectionReference donor =
      FirebaseFirestore.instance.collection('items');
  double totalSum = 0.0;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: donor.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          totalSum = 0.0; // Reset total sum for each data update
          for (var doc in snapshot.data!.docs) {
            // Safely get the 'sl' field and convert it to double
            final fieldValue = doc.get('sl');
            if (fieldValue is num) {
              totalSum += fieldValue.toDouble();
            }
          }
          // Use the calculated totalSum to build a widget
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              // Wrap with SingleChildScrollView
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/cart', arguments: totalSum);
                  });
                },
                child: Text(
                  totalSum.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        } else {
          // Handle the case where there's no data yet
          return Column(
            children: [
              const CircularProgressIndicator(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/vegitable',
                        arguments: totalSum);
                  });
                },
                child: const Text('total Sum'),
              ),
            ],
          );
          // Placeholder for loading
        }
      },
    );
  }
}
