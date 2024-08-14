import 'package:exam/screen/default.dart';
import 'package:exam/screen/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailIdController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Login Page"),
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.cyan[100],
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),

            Image.asset("login.png",
              height: 110,
              width: 110,
              fit: BoxFit.fill,
              color: Colors.cyan[100],
              colorBlendMode: BlendMode.multiply,
            ),

            SizedBox(height: 20),

            Text(
              "User Login",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),

            SizedBox(height: 100),

            Padding( 
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _emailIdController,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    hintText: "Please enter email id",
                    labelText: "Email ID",
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.email_outlined),
                    filled: true,
                    fillColor: Colors.white,
                ),
              ),
            ),

            Padding( 
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Please enter password",
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.key),
                    filled: true,
                    fillColor: Colors.white,
                ),
              ),
            ),

            SizedBox(height: 30),

            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
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
                  var emailId=_emailIdController.text;
                  var pass=_passwordController.text;

                  if (emailId.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please enter email!!!!"),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        //margin: EdgeInsets.fromLTRB(30, 0, 30, 20),
                        showCloseIcon: true,
                    ));
                  }
                  if (pass.isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Please enter password!!!!"),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        showCloseIcon: true,
                      ));
                  }
                  else{
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailIdController.text, password: _passwordController.text).then((value){
                            Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Home(),
                            ));
                        });
                  }
                  
                },
              
              )
              
            ),

            //SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Default(),
                ));
              },
              child: Text("Wanna go back? CLICK ME"),
            )

          ],
        ),
      ),
      

    );
  }
}
