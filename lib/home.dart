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
   List<Map<String,dynamic>> listDrawer = [ 
    {"name":"Home","icon":Icons.home},
    {"name":"Favorite","icon":Icons.favorite},
    {"name":"Setting","icon":Icons.settings}
   ];

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
       
       drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 218, 220, 220),
          width: 250,
          child: Column(
            children: [
                Container(
                   height: 50,
                  margin: const EdgeInsets.only(top: 10,left: 10),
                  child: Row(
                     children: [
                        Icon(Icons.person),
                        Text("User Account"), 
                     ],
                  ),
                ),
                const Divider(
                  height: 10,
                  color: Colors.pink,
                ),
                for(int i = 0;i<listDrawer.length;i++)
                InkWell(
                  onTap: ((){
                      setState(() {
                        curenIdex = i;
                        Navigator.pop(context);
                      });
                  }),
                  child: Container(
                    //  color: Colors.green,
                    height: 50,
                    padding: const EdgeInsets.only(top: 10,left: 10),
                    child: Row(
                      children: [
                        Icon(listDrawer[i]["icon"]),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(listDrawer[i]["name"])
                      ],
                    ),
                  ),
                ),  
            ]
            ),
       ),
    );
  }





  Widget homeScreen()
  {
    return const Center(
      child: CustomScrollView(
         slivers: [
             SliverAppBar(
                 title: Text("comtinue"),
             ),
         ], 
      ),
    );

  }
}
