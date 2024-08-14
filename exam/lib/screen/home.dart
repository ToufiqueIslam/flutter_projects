import 'package:exam/screen/default.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("Home Page"),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Center(
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
                    builder: (context) => Default(),
                  ));
                },
        )
      ),
    );
  }
}