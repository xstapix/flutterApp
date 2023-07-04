import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage'),),
      body: InkWell(                        
        child: Container(
          child: Text('Go home'),
        ),                        
        onTap: () {
          return context.go('/');
        },                      
      ),
    );
  }
}