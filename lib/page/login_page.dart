import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../router.dart';
import '../shared/api.dart';
import '../store/auth_bloc/auth_bloc.dart';
import '../store/auth_bloc/auth_event.dart';
import '../store/auth_bloc/auth_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  final authBloc = AuthBloc();
  late final prefs;

  void setUser() async {
    prefs = await SharedPreferences.getInstance();
    final auth = await prefs.containsKey('auth');
    final email = await prefs.getString('email');
    final password = await prefs.getString('password');
    
    if (auth) {
      router.go('/home');
      // final user = await getAuth(email, password);

      authBloc.add(SetUserEvent({'user': 23}));
      
    } else {
      // await prefs.setBool('auth', true);
      // await prefs.setString('email', '');
      // await prefs.setString('password', '');
      // print('setAuth');
    }
  }

  @override
  void initState() {
    super.initState();
    
    // setUser();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () async {
            await prefs.setBool('auth', true);
            await prefs.setString('email', 'v.sarafannikov@extentlab.ru');
            await prefs.setString('password', 'qazwsxedc1317');
          }, 
          child: Container(margin: EdgeInsets.all(20), child: Text('login', style: TextStyle(fontSize: 40, color: Colors.amber),))
        )
      ],
    );
  }
}