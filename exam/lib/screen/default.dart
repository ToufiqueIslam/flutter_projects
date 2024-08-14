import 'package:exam/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Default extends StatefulWidget {
  const Default({super.key});

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("First Page"),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: 
      Container(
        color:Colors.cyan[100],
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: FilledButton(
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue[300],
                fixedSize: Size(150, 50),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              }, 
          ),
          )
        ),
      ),
    );
  }
}