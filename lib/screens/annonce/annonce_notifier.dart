import 'package:flutter/cupertino.dart';

class AnnonceNotifier with ChangeNotifier {
  String bro = "BRO";

  void setBro() {
    bro = "DIAF";
    notifyListeners();
  }
}
