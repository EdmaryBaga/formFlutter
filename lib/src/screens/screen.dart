import 'package:flutter/material.dart';
import 'package:validacion_formulario/src/mixins/validation_mixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidatorMixins {

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
    validator: validatorEmail,
    onSaved: (value){
      print("$value");
    },
    decoration: InputDecoration(
      labelText: 'Email',
      hintText: 'you@example.com'
    ),
  );

}

Widget passwordField(){
  //para que el currentState funcione se debe usar un TextForField no un TextField
  return TextFormField(
    validator: validatorPassword,
    onSaved: (value){
      print("$value");
    },
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
      //formKey.currentState.reset();
      //usamos el FormState para validar el form
      if(formKey.currentState.validate())
        formKey.currentState.save();
    },
    child: Text('Enviar'),
  ),
  );

}


}