import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

//declaramos una variable global 
final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
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
  //para que el currentState funcione se debe usar un TextForField no un TextField
  return TextFormField(
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
      // con la variable global hacemos que se limpie el fom
      formKey.currentState.reset();
    },
    child: Text('Enviar'),
  ),
  );

}


}