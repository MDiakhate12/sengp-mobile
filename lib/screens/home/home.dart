import 'package:flutter/material.dart';
import 'package:sengp_mobile/screens/annonce/annonce_list.dart';
import 'package:sengp_mobile/screens/chat/chat_list.dart';
import 'package:sengp_mobile/screens/reservation/revervation_list.dart';
import 'package:firebase_core/firebase_core.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container(
            color: Colors.blueGrey.shade900,
            child: Text("Error!"),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
              // backgroundColor: Colors.blueGrey.shade900,
              appBar: AppBar(
                title: Text("SenGP"),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text("Chat"),
                      icon: Icon(Icons.chat_bubble),
                    ),
                    Tab(
                      child: Text("Annonces"),
                      icon: Icon(Icons.flight),
                    ),
                    Tab(
                      child: Text("Réservations"),
                      icon: Icon(Icons.book_online),
                    )
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  ChatList(),
                  AnnonceList(),
                  ReservationList(),
                ],
              ),
            ),
          );
        }
        return Container(
          color: Colors.blueGrey.shade900,
          child: CircularProgressIndicator(
            color: Colors.teal.shade900,
          ),
        );
      },
    );
  }
}
