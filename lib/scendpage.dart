import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dark_light_/main.dart';

class scendage extends StatefulWidget {
  const scendage({super.key});

  @override
  State<scendage> createState() => _scendageState();
}

class _scendageState extends State<scendage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => Scaffold(
              body: NestedScrollView(
                headerSliverBuilder: (BuildContext context, bool iScroled) {
                  return [
                    SliverAppBar(
                      title: Row(
                        children: [
                          Row(children: [
                            IconButton(
                                onPressed: () {
                                  Myapp.themeNotifire.value =
                                      Myapp.themeNotifire.value ==
                                              ThemeMode.light
                                          ? ThemeMode.dark
                                          : ThemeMode.light;
                                },
                                icon: Icon(
                                    Myapp.themeNotifire.value == ThemeMode.light
                                        ? Icons.dark_mode_outlined
                                        : Icons.light_mode)),
                          ]),
                          SvgPicture.asset(
                            "assests/logofod.svg",
                            alignment: Alignment.topRight,
                          )
                        ],
                      ),
                    )
                  ];
                },
                body: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _padding_menu(
                              text: "اضافات اخرئ",
                              color: Color.fromARGB(92, 131, 106, 106)!),
                          _padding_menu(
                              text: "اضافات اخرئ",
                              color: Color.fromARGB(92, 131, 106, 106)!),
                          _padding_menu(
                              text: "مكرونه",
                              color: Color.fromARGB(92, 131, 106, 106)!),
                          _padding_menu(
                              text: "برجر",
                              color: Color.fromARGB(92, 131, 106, 106)!),
                          _padding_menu(
                              text: "بيتزا",
                              color: Color.fromARGB(92, 131, 106, 106)!),
                          _padding_menu(
                              text: "الاطباق الرئيسيه", color: Colors.orange),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          reverse: true,
                          addAutomaticKeepAlives: false,
                          cacheExtent: 100.1,
                          children: [
                            _MENUITEAM(
                                imageassest: "images/MANY2.png",
                                text$: "5450 د.ع",
                                text: " د.ع 3456",
                                textpises: "ببسي همبركر وجبه"),
                            _MENUITEAM(
                                imageassest: "images/thlw3.png",
                                textpises: "ببسي همبركر وجبه",
                                text$: "5450 د.ع",
                                text: " د.ع 3456"),
                            _MENUITEAM(
                                imageassest: "images/kapap.png",
                                textpises: "ببسي همبركر وجبه",
                                text$: "5450 د.ع",
                                text: " د.ع 3456"),
                            _MENUITEAM(
                                imageassest: "images/shorba.png",
                                textpises: "ببسي همبركر وجبه",
                                text$: "5450 د.ع",
                                text: " د.ع 3456"),
                            _MENUITEAM(
                                imageassest: "images/MANY2.png",
                                textpises: "ببسي همبركر وجبه",
                                text$: " 5450 د.ع",
                                text: " د.ع 3456"),
                          ],
                        ),
                      ),
                    ),
                    BottomNavigationBar(
                      items: _borromnaviterpar,
                      // currentIndex: _selectedIndex,
                      selectedItemColor: Color.fromARGB(213, 190, 117, 49),
                      onTap: (value) {},
                    ),
                  ],
                ),
              ),
            ));
  }

  // ignore: non_constant_identifier_names
  Card _MENUITEAM(
      {required String imageassest,
      required String text,
      required String text$,
      required textpises}) {
    return Card(
      child: InkWell(
        child: SizedBox(
          child: Column(
            children: [
              Image.asset(
                imageassest,
                height: 120.h,
                width: 320.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    textpises,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 21,
                        fontFamily: "Cairo1"),
                    //textAlign: TextAlign.right,
                  ),
                ],
              ),
              Text(
                text,
                style: const TextStyle(
                    height: 1,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    fontFamily: "Cairo1"),
              ),
              Text(
                text$,
                style: const TextStyle(
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding _padding_menu({required String text, required Color color}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontFamily: 'Cairo1'),
            )
          ],
        ),
      ),
    );
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
}
