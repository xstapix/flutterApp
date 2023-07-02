import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../components/myAppBar.dart';
import '../components/myDrawer.dart';

import '../util/material_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  var materialList;

  @override
  void initState() {
    materialList = [
      {
        'date': '28.09.2022',
        'time': 90,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '18.09.2022',
        'time': 70,
        'title': 'Дайджест материалов за июнь 2023',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '14.09.2022',
        'time': 40,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '01.09.2022',
        'time': 10,
        'title': 'Создаем абстрактную 3D фигуру в Vectary',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '28.09.2022',
        'time': 90,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '28.09.2022',
        'time': 90,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '28.09.2022',
        'time': 90,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '18.09.2022',
        'time': 70,
        'title': 'Дайджест материалов за июнь 2023',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '14.09.2022',
        'time': 40,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '01.09.2022',
        'time': 10,
        'title': 'Создаем абстрактную 3D фигуру в Vectary',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '28.09.2022',
        'time': 90,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
      {
        'date': '28.09.2022',
        'time': 11,
        'title': 'Практика по брутализму вместе с Сергеем Телидченко',
        'desc': 'На практике погружаемся в брутализм вместе с нашим приглашенным экспертом!'
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 8,
            childAspectRatio: (1 / .6)
          ),
          itemCount: materialList.length,
          itemBuilder: (BuildContext ctx, index) {
            return MaterialBox(
              objMaterial: materialList[index]
            );
          }
        ),
      )
    );
  }
}