import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex=0;
  PageController _pageController=PageController();
  void onTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
    _pageController.jumpToPage(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navbar"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.red,
            Column(
              Row(

              ),
              Row(),
            )
          ),
          Container(color: Colors.green,child:Text("Search")),
          Container(color: Colors.blue,),
          Container(color: Colors.cyan,),
          Container(color: Colors.purple,),
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(items: 
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label:"Notif"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:"Gandu"),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Colors.yellow,
      onTap: onTapped,
      ),
    );
  }
}