import 'package:flutter/material.dart';

import '../components/myAppBar.dart';
import '../components/myDrawer.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  final List<Map> myProducts =
    List.generate(20, (index) => {"id": index, "name": "Product $index"})
        .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: myAppBar,
      drawer: myDrawer,
      
    );
  }
}