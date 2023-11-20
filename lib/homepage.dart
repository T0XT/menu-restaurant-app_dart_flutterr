//import 'dart:html';
//import 'package:flutter/foundation.dart';

import 'package:dark_light_/main.dart';
import 'package:dark_light_/scendpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter_switch/flutter_switch.dart';
//import 'package:flutter/scheduler.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //bool _switch = _switch;
  //final _switch = virabl();
  //bool _on = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => Scaffold(
              appBar: AppBar(
                //backgroundColor: Colors.white,
                title: Row(
                  children: [
                    Row(children: [
                      //IconButton(
                      // onPressed: () {},
                      // icon: SvgPicture.asset("assests/half_moon_dark.svg")),
                      //  SizedBox(
                      //   width: 10,
                      //   ),

                      IconButton(
                          onPressed: () {
                            Myapp.themeNotifire.value =
                                Myapp.themeNotifire.value == ThemeMode.light
                                    ? ThemeMode.dark
                                    : ThemeMode.light;
                          },
                          icon: Icon(
                              Myapp.themeNotifire.value == ThemeMode.light
                                  ? Icons.dark_mode_outlined
                                  : Icons.light_mode)),
                    ]),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 18, 0, 0),
                          child: SvgPicture.asset("assests/logofod.svg"),
                        )
                      ],
                    )
                  ],
                ),
              ),
              body: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(228, 22, 0, 0),
                    child: Text(
                      "الاصناف",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: ScrollPhysics(),
                      child: Column(
                        children: [
                          _card(
                              imageassest: "images/purfer.png",
                              text: "بركر",
                              texmony: "12 نوع"),
                          SizedBox(
                            height: 5,
                          ),
                          _card(
                              imageassest: "images/nodels.png",
                              text: "نودلز",
                              texmony: "12 نوع"),
                          _card(
                              imageassest: "images/nodela.png",
                              text: "مكرونه",
                              texmony: "12 نوع"),
                          SizedBox(
                            height: 5,
                          ),
                          _card(
                              imageassest: "images/purfer.png",
                              text: "البركر",
                              texmony: "12 نوع"),
                          SizedBox(
                            height: 5,
                          ),
                          _card(
                              imageassest: "images/Group 4.png",
                              text: "بيتزا",
                              texmony: "12 نوع"),
                          SizedBox(
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  BottomNavigationBar(
                    items: _borromnaviterpar,
                    // currentIndex: _selectedIndex,
                    selectedItemColor: Color.fromARGB(213, 190, 117, 49),
                    iconSize: 18,
                    onTap: (value) {},
                  ),
                ],
              ),
            ));
  }

  List<BottomNavigationBarItem> get _borromnaviterpar {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.messenger_outlined),
        label: 'command',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu),
        label: 'menu',
      ),
    ];
  }

  Card _card({
    required String imageassest,
    required String text,
    required String texmony,
  }) =>
      Card(
        child: InkWell(
          child: SizedBox(
            height: 120.h,
            width: 300.w,

            // margin: const EdgeInsets.
            //padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 1),
            child: SizedBox(
              child: Stack(
                children: [
                  Image.asset(
                    imageassest,
                    height: 120.h,
                    width: 320.w,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                          color: Colors.white,
                          fontSize: 30),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      texmony,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                          color: const Color.fromARGB(255, 172, 164, 164),
                          fontSize: 12.dg),
                    ),
                  )
                ],
              ),
            ),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => scendage()));
          },
        ),
      );
}
