import 'package:flutter/material.dart';

class ReservationList extends StatelessWidget {
  const ReservationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(Icons.book_online),
        Text("Résérvations"),
      ],
    );
  }
}
