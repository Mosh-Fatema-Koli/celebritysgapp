import 'package:celebritysgapp/route/route.dart';
import 'package:celebritysgapp/view/pages/onboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () => Get.to(OnboardPage()));
    return Scaffold(
      backgroundColor: Color(0xFF1b202b),
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('images/logo.jpg'),
        ),
      ),
    );
  }
}
