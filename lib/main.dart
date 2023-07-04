import 'package:flutter/material.dart';
import 'package:flutter_application_1/router.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import './redux/app_state.dart';
import './redux//reducers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

