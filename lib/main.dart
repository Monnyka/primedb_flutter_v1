import 'package:flutter/material.dart';

import 'LoginBottomSheet.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'hello',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _HomePage();
}

class _HomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(244, 243, 243, 1),

      ),
    body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const Text("Good Morning,\nWelcome Back", style: TextStyle(color: Colors.black87, fontSize: 30.0,fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                const Text("Check out the new release movie today", style: TextStyle(color: Colors.black87, fontSize: 16.0,),),
                const SizedBox(height: 20,),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(45)
                  ),
                  child: const TextField(decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Colors.black87),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)
                  ),),
                ),
                const SizedBox(height: 30,),
                const Text("Trending Movie", style: TextStyle(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
