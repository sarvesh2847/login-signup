import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
void main(){
  runApp(mylogin());
}

class mylogin extends StatelessWidget {
  const mylogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login());
  }
}
