import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sample1/screen/home.dart';
import 'package:sample1/screen/register.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _emailIdController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),

            // Image.asset("login3.png",
            //   height: 110,
            //   width: 110,
            //   fit: BoxFit.fill,
            // ),

            SizedBox(height: 50),

            // Text(
            //   "User Registration",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 16,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.purple,
            //   ),
            // ),

            SizedBox(height: 150),

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
                child: Text("SignIn"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
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
                        email: _emailIdController.text, 
                        password: _passwordController.text,).then((value){
                          Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Home(),
                          ));
                        });
                      
                  }
                  
                },
              
              )
              
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Register(),
                ));
              },
              child: Text("Don't have an accout? Sign Up"),
            )

          ],
        ),
      ),
      

    );
  }
}














// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _LogInShowState();
// }

// class _LogInShowState extends State<Register> {
//   @override
//   Widget build(BuildContext context) {
//     double sWidth = MediaQuery.sizeOf(context).width;
//     double sHeight = MediaQuery.sizeOf(context).height;
//     TextEditingController emailIdController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();

// //*******Custom Function */
//     ShowMySnackBar(var sMsg) {
//       final SnBar = SnackBar(
//         content: Text(sMsg),
//         duration: Duration(seconds: 2),
//         backgroundColor: Colors.blueGrey,
//         showCloseIcon: true,
//         closeIconColor: Colors.white,
//         behavior: SnackBarBehavior.floating,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(400)),
//         margin: EdgeInsets.fromLTRB(30, 0, 30, 40),
//       );
//       ScaffoldMessenger.of(context).showSnackBar(SnBar);
      
//     }

// //*********End Of All Func */
//     return Scaffold(
//       body: Container(
//         color: Colors.blueAccent,
//         width: sWidth,
//         height: sHeight,
//         child: Column(
//           children: <Widget>[
//             SizedBox(height: 20), // This is for gaping
//             Image.asset("login3.png",
//                 width: 110, height: 110, fit: BoxFit.fill),
//             SizedBox(height: 40),

//             Text(
//               "User Registration",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.deepPurple,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),

//             SizedBox(height: 100), // This is for gaping
//             Padding(
//               padding: EdgeInsets.all(10), 
//               child: TextField(
//                 controller: emailIdController,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Please enter your Email Id",
//                     labelText: "Email Id",
//                     floatingLabelBehavior: FloatingLabelBehavior.never,
//                     icon: Icon(Icons.email_outlined),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.5)),
//               ),
//             ),

//             SizedBox(height: 10), // This is for gaping
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: TextField(
//                 controller: passwordController,
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     hintText: "Please Enter Password ..",
//                     labelText: "Password",
//                     icon: Icon(Icons.password),
//                     filled: true,
//                     fillColor: Colors.white),
//               ),
//             ),

//             SizedBox(height: 30), // This is for gaping

//             Padding(
//               padding: EdgeInsets.all(10),
//               child: ElevatedButton(
//                   child: Text("Register"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.yellow,
//                     fixedSize: Size(150, 40),
//                     textStyle: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onPressed: () {
//                     var valEmailId = emailIdController.text;
//                     var valPass = passwordController.text;
//                     if (valEmailId.isEmpty == true) {
//                       ShowMySnackBar("Please Enter Email Id ..");
//                     }
//                     if (valPass.isEmpty == true) {
//                       ShowMySnackBar("Please Enter Password");
//                     } else {
//                       FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailIdController.text, password: passwordController.text).then((value){
//                         print("User created");
//                         Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Home()));
//                       });
                      
//                     }
//                   }
//                   // Do Button fu
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }