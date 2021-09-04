import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sengp_mobile/screens/annonce/annonce_list.dart';
import 'package:sengp_mobile/screens/home/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => Home());
      case "/annonce_list":
        return MaterialPageRoute(builder: (context) => AnnonceList());

      default:
        return MaterialPageRoute(
          builder: (context) => Container(
            child: Center(
              child: Text("Error Page!"),
            ),
          ),
        );
    }
  }
}
