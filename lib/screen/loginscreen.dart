import 'package:dicoding_mafp/screen/homescreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String title;

  const LoginScreen({super.key, required this.title});

  @override
  State<LoginScreen> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  String _username = "";
  String _password = "";

  void _processLogin() {
    if (_username.isEmpty || _password.isEmpty) {
      SnackBar snackBar =
          const SnackBar(content: Text('Username dan Password harus diisi'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      var username = _username;
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomeScreen(username);
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                // shrinkWrap: true,
                // reverse: true,
                children: [
                  Flexible(child: Image.asset('assets/img/logo.png')),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                      child: TextField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Username'),
                    onChanged: (String username) {
                      setState(() {
                        _username = username;
                      });
                    },
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                      onChanged: (String password) {
                        setState(() {
                          _password = password;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      child: const Text('Login'), onPressed: _processLogin),
                ] //.reversed.toList(),
                )),
      );
    } else {
      return Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/img/logo.png'),
            Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: SizedBox(
                  width: 300,
                  child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Username'),
                      onChanged: (String value) {}),
                ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                      onChanged: (String password) {
                        setState(() {
                          _password = password;
                        });
                      },
                    ))),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    child: const Text('Login'), onPressed: _processLogin),
              ],
            )
            // Column(children: [

            // ]),
          ],
        ),
      ));
    }
  }
}
