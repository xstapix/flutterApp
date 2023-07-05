import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../components/myAppBar.dart';
import '../components/myDrawer.dart';
import '../components/filter.dart';

import '../util/material_box.dart';
import '../shared//api.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final List<Object> materialList = <Object>[
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
  // final List<String> tags = <String>["Дашборд", "Сайт-портфолио", "Календарь", "Кейсы", "Figma", 'Photoshop', 'Тренды', 'UX', 'Продвижение в соцсетях', 'Анимация', '3D / VR / AR', 'Tilda', 'Теория дизайна'];

  void getData() async {
    var data = await fetchData();

    print(data);

    setState(() {
      tags = data;
    });
  }

  var showFilter;
  var tags;

  @override
  void initState() {
    showFilter = false;
    tags = null;
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                    ),
                    color: Color.fromARGB(255, 51, 51, 51),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 16.0,
                      child: SvgPicture.string('''<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M11.25 11.25L14.25 14.25" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M7.5 12.25C10.1234 12.25 12.25 10.1234 12.25 7.5C12.25 4.87665 10.1234 2.75 7.5 2.75C4.87665 2.75 2.75 4.87665 2.75 7.5C2.75 10.1234 4.87665 12.25 7.5 12.25Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>'''
                      ),
                    )
                  )
                ),
                Expanded(
                  child: Container(
                    width: 48,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      ),
                      color: Color.fromARGB(255, 51, 51, 51),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white, fontSize: 14),
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    )
                  ),
                ),
                InkWell(
                  child: Filter(
                    showFilter: showFilter
                  ),
                  onTap: () {
                    setState(() {
                      showFilter = !showFilter;
                    });
                  },
                )
              ],
            ) 
          ),
          if(tags)
            Wrap(
              spacing: 5,
              runSpacing: 8,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: List.generate(tags.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    border: Border.all(width: 1, color: Color.fromARGB(255,58, 58, 58))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    child: Text(tags[index], style: TextStyle(color: Colors.white, fontSize: 14),),
                  ),
                );
              })
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
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
            ),
          )
        ],
      )
    );
  }
}