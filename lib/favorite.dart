 import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  Favorite({super.key});

  List<String> names = ["sovann", "pheng", "ing"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: 
      names.map((e) => Container(
                 height: 200,
                 color: Colors.pink,
                 child: Text(e),
             )).toList()
      ,),
      
      // child: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //        Container(
      //            height: 200,
      //            color: Colors.pink,
      //        ),
      //         Container(
      //           width: 500,
      //            height: 200,
      //            color: const Color.fromARGB(255, 67, 98, 80),
      //        ),
      //         Container(
      //            height: 200,
      //            color: const Color.fromARGB(255, 58, 197, 8),
      //        ),
      //         Container(
      //            height: 900,
      //            color: Colors.pink,
      //        ),
      //     ],
      //   ),
      // ),
    );
  }
}