import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // @override
  void xx() async {
    final prefs = await SharedPreferences.getInstance();
    // context.go('/users');
    print('object');
    
  }

  @override
  Widget build(BuildContext context) {
    xx();
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),
      body: Column(children: [
        Text('data')
      ],)
    );
  }
}