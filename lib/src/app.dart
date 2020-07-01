import 'package:flutter/material.dart';
import 'package:validacion_formulario/src/screens/screen.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen()
    );
  }
}