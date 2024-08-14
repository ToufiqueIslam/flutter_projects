import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample1/screen/signin.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex=0;
  PageController _pageController=PageController();
  void onTap(int index){
    setState(() {
      _selectedIndex=index;
    });
    _pageController.jumpToPage(_selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue[400],
      ),
      body:     
      PageView(
        controller: _pageController,
        children: [
          Container(color: Colors.yellow, 
            child: Center(
              child: ElevatedButton(
                child: Text("Sign Out"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  fixedSize: Size(150, 50),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )
                ),
                
                
                onPressed: () { 
                  FirebaseAuth.instance.signOut();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ));
                },
              
              )
              
            ),
          ),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.purple),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notif"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2),label: "Person"),
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          onTap: onTap,
        ),
    );
  }
}