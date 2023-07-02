import 'package:flutter/material.dart';

import '../components/myAppBar.dart';
import '../components/myDrawer.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer
        ],
      ),
    );
  }
}