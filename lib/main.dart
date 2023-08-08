import 'package:flutter/material.dart';
import 'package:flutter_application_1/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'store/favorite_bloc.dart/favorite_bloc.dart';
import 'store/materials_bloc/materials_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  if (await prefs.containsKey('auth')) {
    print('AuthSuccess');
  } else {
    await prefs.setString('auth', '{user[2367]}');
    print('setAuth');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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

