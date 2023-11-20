import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class Responseval extends StatelessWidget {
  final Widget largscreen;
  final Widget medame;
  final Widget smolescreen;

  const Responseval(
      {required Key key,
      required this.medame,
      required this.smolescreen,
      required this.largscreen})
      : super(key: key);
  static bool issmolescreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool issmeadam(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool islarg(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 1200) {
          return medame ?? largscreen;
        } else {
          return smolescreen;
        }
      },
    );
  }
}
