import 'package:cloud_firestore/cloud_firestore.dart';

class AnnonceService {
  Stream<QuerySnapshot> getAll() {
    return FirebaseFirestore.instance.collection('annonces').snapshots();
  }
}
