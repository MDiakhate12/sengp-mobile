import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AnnonceList extends StatefulWidget {
  const AnnonceList({Key? key}) : super(key: key);

  @override
  _AnnonceListState createState() => _AnnonceListState();
}

class _AnnonceListState extends State<AnnonceList> {
  Stream<QuerySnapshot> _annonces =
      FirebaseFirestore.instance.collection('annonces').snapshots();

  String bro = "BRO";

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _annonces,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Error !");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.teal,
              ),
            );
          }

          // return Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   mainAxisSize: MainAxisSize.max,
          //   children: [
          //     Icon(Icons.flight_takeoff),
          //     Text("Annonces"),
          //   ],
          // );

          return ListView(
              children:
                  snapshot.data!.docs.map((QueryDocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['lieu_arrivee']["pays"]),
            );
          }).toList());
        });
  }
}
