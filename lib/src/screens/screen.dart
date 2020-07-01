import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            submitField(),          
          ],
        )
      ),
    );
  }

Widget emailField(){
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'you@example.com'
    ),
  );

}

Widget passwordField(){
  return TextField(
    decoration: InputDecoration(
      labelText:'contraseña',
      hintText: 'contraseña',
    ),
  );

}

Widget submitField(){
  return Container(
    margin: EdgeInsets.only(top:20.0),
    child:RaisedButton(
    onPressed: (){
    },
    child: Text('Enviar'),
  ),
  );

}


}