import 'package:flutter/material.dart';
import 'package:test_evaluation/InfoScreen.dart';
import 'package:test_evaluation/designScreen.dart';
import 'package:test_evaluation/dictionaryScreen.dart';
import 'package:test_evaluation/responseScreen.dart';
import 'package:test_evaluation/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Test',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? tName ;
  int _currentIndex = 0;
  final List _pages = [const InformationScreen(),const DesignScreen(),const ResponseScreen(),const DictionaryScreen()];

  void indexUpdate(int val){
    setState(() {
      _currentIndex = val ;
      switch(val) {
        case 0: { tName = 'Information Screen'; }
        break;
        case 1: { tName = 'Design Screen'; }
        break;
        case 2: { tName = 'Response Screen'; }
        break;
        case 3: { tName = 'Dictionary Screen'; }
        break;
      } // change the index value
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:AppBar(
          title:  Text(tName == null ? '' : tName!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20)),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                color: Colors.black,
                onPressed: () {
                },
              )
            ]),
      body:_pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:_currentIndex,
        onTap:indexUpdate,
       selectedItemColor: Colors.grey[700],
       selectedFontSize:13,
       unselectedFontSize: 13,
       iconSize:30,
       items: const [
         BottomNavigationBarItem(
           label: "Information", icon: Icon(Icons.home),

         ),

         BottomNavigationBarItem(
           label: "Design", icon: Icon(Icons.home),

         ),
         BottomNavigationBarItem(
           label: "Response", icon: Icon(Icons.home),

         ),
         BottomNavigationBarItem(
           label: "Dictionary", icon: Icon(Icons.home),

         ),
       ],),
    );
  }
}
