import 'package:flutter/material.dart';
import 'package:test_evaluation/designScreen.dart';

class InformationScreen extends StatefulWidget {


  const InformationScreen({Key? key }) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  final _formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final email = TextEditingController();
  final mobile = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 180.0,
                    width: 180.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Logo.png'),

                      )
                    ),
                  ),
                )
              ],
            ) ,
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16),
                  child: TextFormField(
                    controller: username,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'Username',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16),
                  child: TextFormField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'E-mail',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16),
                  child: TextFormField(
                    controller: mobile,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(

                      ),
                      labelText: 'Mobile Number',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {

                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Profile created')),
                      );
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder:(context)=> DesignScreen(usernameValue:username.text, mobileValue: mobile.text, emailValue: email.text,),
                        ));
                      });

                    }
                  },
                  child: const Text('Submit'),

                ),
              ],
            ),
          )


          ]
        ),
      )
    );
  }
}
