
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();

}

class _SignInState extends State<SignIn> {
  bool _obscuredPassword = true;

  void _toggle() {
    setState(() {
      _obscuredPassword = !_obscuredPassword;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 95),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                autocorrect: false,
                style: TextStyle(
                  fontSize: 19
                ),
                obscureText: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                  labelText: 'Prenom',
                  labelStyle: TextStyle(
                    fontSize: 17
                  ),
                  hintText: 'Entrez votre prenom'
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 15,
                ),
              child: TextFormField(
                textCapitalization: TextCapitalization.words,
                autocorrect: false,
                style: TextStyle(
                    fontSize: 19
                ),
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    labelText: 'Nom',
                    labelStyle: TextStyle(
                        fontSize: 17
                    ),
                    hintText: 'Entrez votre nom'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                autocorrect: false,
                style: TextStyle(
                    fontSize: 19
                ),
                obscureText: false,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    labelText: "Nom d'utilisateur",
                    labelStyle: TextStyle(
                        fontSize: 17
                    ),
                    hintText: "Entrez votre nom d'utilisateur"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15,
              ),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                autocorrect: false,
                style: TextStyle(
                    fontSize: 19
                ),
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                        fontSize: 17
                    ),
                    hintText: "Entrez votre e-mail"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 15,
              ),
              child: TextFormField(
                autocorrect: false,
                style: TextStyle(
                    fontSize: 19
                ),
                obscureText: _obscuredPassword,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    labelText: "Mot de passe",
                    labelStyle: TextStyle(
                        fontSize: 17
                    ),
                    hintText: "Entrez votre mot de passe",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscuredPassword ? Icons.visibility: Icons.visibility_off
                    ),onPressed: () {
                      _toggle();
                  },
                  )
                ),
              ),
            ),
            TextButton(
              child: Text(
                  'Valider',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(Size(320, 50)),
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(12)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                overlayColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                    ),
                ),
              ),
              onPressed: () {
                print('Pressed');
              },
            ),
          ],
        ),
      ),
    );
  }
}