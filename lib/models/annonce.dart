import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sengp_mobile/models/localisation.dart';

class Annonce {
  String id;
  String description;
  String heure_arrivee;
  String heure_depart;
  Localisation lieu_arrivee;
  Localisation lieu_depart;
  int prix_par_kg;
  int quantite;

  Annonce(
      {this.id = "",
      this.description = "",
      this.heure_arrivee = "",
      this.heure_depart = "",
      this.lieu_arrivee = const Localisation("Sénégal", "Dakar",
          const GeoPoint(14.7310233229502, -17.472915402565448)),
      this.lieu_depart = const Localisation("Sénégal", "Dakar",
          const GeoPoint(14.7310233229502, -17.472915402565448)),
      this.prix_par_kg = 0,
      this.quantite = 0});

  factory Annonce.fromFirestore(QueryDocumentSnapshot document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;

    return Annonce(
      id: document.id,
      description: data["description"],
      heure_arrivee: data["heure_arrivee"],
      heure_depart: data["heure_depart"],
      lieu_arrivee: data["lieu_arrivee"],
      lieu_depart: data["lieu_depart"],
      prix_par_kg: data["prix_par_kg"],
      quantite: data["quantite"],
    );
  }
}
