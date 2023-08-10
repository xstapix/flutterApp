import 'package:flutter/material.dart';
import 'package:flutter_application_1/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared/api.dart';
import 'store/auth_bloc/auth_bloc.dart';
import 'store/auth_bloc/auth_event.dart';
import 'store/favorite_bloc.dart/favorite_bloc.dart';
import 'store/materials_bloc/materials_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final authBloc = AuthBloc();
  final prefs = await SharedPreferences.getInstance();
  final auth = await prefs.containsKey('auth');

  if (auth) {
    final email = await prefs.getString('email');
    final password = await prefs.getString('password');
    final user = await getAuth(email, password);

    authBloc.add(SetUserEvent(user));

    router.go('/home');
  }
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MaterialsBloc()),
        BlocProvider(create: (context) => FavoriteBloc ()),
      ], 
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      )
    ); 
  }
}


