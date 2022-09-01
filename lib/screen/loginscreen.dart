import 'package:dicoding_mafp/screen/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{

  final String title;

  const LoginScreen({super.key, required this.title});

  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>{

  String _username = "";
  String _password = "";

  void _processLogin(){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen(this._username);
      }));
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset('assets/img/logo.png'),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Username'
                  ),
                  onChanged: (String username) {
                    setState(() {
                      _username = username;
                    });
                  },
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password'
                  ),
                  onChanged: (String password){
                    setState(() {
                      _password = password;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: _processLogin
                ),
              ],
            )
        ),
      );
  }
}