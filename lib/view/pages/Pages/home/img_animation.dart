import 'package:flutter/material.dart';

class ImgPage extends StatefulWidget {
  @override
  _ImgPageState createState() => _ImgPageState();
}

class _ImgPageState extends State<ImgPage> {
  int index = 0;

  final widgets = [
    Image.asset('images/female-1.png', fit: BoxFit.cover, key: Key('1')),
    Image.asset('images/female-2-1.png', fit: BoxFit.cover, key: Key('2')),
    Image.asset('images/female-3-1.png', fit: BoxFit.cover, key: Key('3')),
    Image.asset('images/female-4-1.png', fit: BoxFit.cover, key: Key('4')),
    Image.asset('images/female-5-1.png', fit: BoxFit.cover, key: Key('5')),
    Image.asset('images/female-6-1.png', fit: BoxFit.cover, key: Key('6')),
    Image.asset('images/female-7-1.png', fit: BoxFit.cover, key: Key('7')),
  ];

  @override
  Widget build(BuildContext context) => Container(
        height: 320,
        child: Center(
          child: AnimatedSwitcher(
            duration: Duration(seconds: 5),
            reverseDuration: Duration(seconds: 1),
            transitionBuilder: (child, animation) => ScaleTransition(
              child: SizedBox.expand(child: child),
              scale: animation,
            ),
            // switchInCurve: Curves.bounceIn,
            // switchOutCurve: Curves.bounceOut,
            // switchInCurve: Curves.easeIn,
            // switchOutCurve: Curves.easeOut,
            child: widgets[index],
          ),
        ),
      );
}
