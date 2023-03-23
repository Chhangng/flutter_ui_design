import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_start/book.dart';
import 'package:flutter_start/favorite.dart';
import 'package:flutter_start/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int curenIdex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 41, 23, 240),
        title: const Text(
          "UI Dedign"
          ),
      ),
      body: curenIdex == 0? homeScreen(): curenIdex == 1 ? Favorite()  : curenIdex == 2 ? Book() : Setting(),
     
     bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.green,
        currentIndex: curenIdex,
        type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.book),label: "book"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting"),
      ],
       onTap: ((value){
            setState(() {
            curenIdex = value;
            });
       }),
      ),  
       
    );
  }
  Widget homeScreen()
  {
    return Container(
        child: Text("yese"),
      );

  }
}
