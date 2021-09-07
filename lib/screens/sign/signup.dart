import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              padding: const EdgeInsets.only(top: 300.0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
                vertical: 35,
              ),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                autocorrect: false,
                inputFormatters: [
                  MaskedInputFormatter('## ### ## ##')
                ],
                style: TextStyle(
                  fontSize: 19
                ),
                obscureText: false,
                decoration:
                InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 23.0),
                  prefix: CountryCodePicker(
                    onChanged: (code) {
                      print(code.dialCode);
                    },
                    initialSelection: 'SN',
                    hideSearch: false,
                    showCountryOnly: false,
                    showDropDownButton: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(38.0)
                  ),
                  labelText: 'Numero',

                  labelStyle: TextStyle(
                    fontSize: 17
                  ),
                  hintText: 'XX XXX XX XX',

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