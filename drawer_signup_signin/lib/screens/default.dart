import 'package:drawer_signup_signin/screens/signin_screen.dart';
import 'package:drawer_signup_signin/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    'W E L C O M E',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.login),
                title: const Text(
                  'SignIn',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.app_registration_outlined),
                title: const Text(
                  'SignUp',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
