import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  final String username;

  const HomeScreen(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.red,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back')
              )
            ],
          )
      ),
    );
  }
}