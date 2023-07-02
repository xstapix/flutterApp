import 'package:flutter/material.dart';

var myDrawer = const Drawer(
  backgroundColor: Color.fromARGB(255, 255, 255, 255),
  child: Column(children: [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text('DASHBOARD'),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text('MASSENGE'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('SETTINGS'),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('LOGOUT'),
    ),
  ]),
);