import 'package:cloud_firestore/cloud_firestore.dart';

class Localisation {
  final String? pays;
  final String? ville;
  final GeoPoint? geo;

  const Localisation(this.pays, this.ville, this.geo);
}
