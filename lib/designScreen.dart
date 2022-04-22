import 'package:flutter/material.dart';

class DesignScreen extends StatelessWidget {
  final String usernameValue;
  final String emailValue;
  final String mobileValue;



  const DesignScreen({Key? key , required this.usernameValue , required this.emailValue , required this.mobileValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:Text(usernameValue)
      ),
    );
  }
}
