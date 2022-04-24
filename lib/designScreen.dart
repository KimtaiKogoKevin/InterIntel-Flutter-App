import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_evaluation/responseScreen.dart';

import 'InfoScreen.dart';
import 'dictionaryScreen.dart';

class DesignScreen extends StatefulWidget {
  late  String usernameValue;
  late  String emailValue;
  late  String mobileValue;


   DesignScreen({Key? key,
    required this.usernameValue,
    required this.emailValue,
    required this.mobileValue})
      : super(key: key);


  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  var status = false;
 bool  checkStatus(){
   if(widget.usernameValue.isNotEmpty && widget.emailValue.isNotEmpty && widget.usernameValue.isNotEmpty){
      setState(() {
        status = true;

      });

   }
   return status;

 }
  @override
  Widget build(BuildContext context) {
    goBack(BuildContext context){
      Navigator.pop(context);


    }
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Visibility(
          visible: checkStatus(),
          child:Stack(
            children: [
              SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'User Profile Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: height * 0.8,
                        color: Colors.white,
                        child: LayoutBuilder(builder: (context, constraints) {
                          double innerHeight = constraints.maxHeight;
                          double innerWidth = constraints.maxWidth;

                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: innerHeight *0.75,
                                  width: innerWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 70),
                                        Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListTile(
                                              trailing: Icon(Icons.person) ,
                                              title: Text('Username :' + widget.usernameValue,
                                                style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.center,

                                              ),
                                            )
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ListTile(
                                              trailing: Icon(Icons.message),
                                              title: Text('Email Address :' + widget.emailValue,
                                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.center,),
                                            )
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.all(8.0 ),
                                            child: ListTile(
                                              trailing: Icon(Icons.phone),
                                              title: Text('Mobile Number : ' + widget.mobileValue,
                                                style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),
                                                textAlign: TextAlign.center,),
                                            )
                                        ) ,
                                        ElevatedButton(
                                          onPressed: ()=> goBack(context),
                                          child: const Text('Go Back To Information Screen'),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                right: 0,
                                child: Center(
                                  child: Container(
                                    child: Image.asset(
                                      'assets/images/userimg.png',
                                      fit: BoxFit.fitWidth,
                                      width: innerWidth * 0.45,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                      )
                    ],
                  ))
            ],
          ),
          replacement: SizedBox(
            height: height,
            width: width,

            child: const Center(child: Text('Kindly Fill in the form in the information screen ')),
          ),

        ),
      ) ,
    );
  }
}

