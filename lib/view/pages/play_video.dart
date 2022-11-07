import 'package:celebritysgapp/view/pages/video.dart';
import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlayVideoPage extends StatelessWidget {
  const PlayVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Text(
              "Sample Play To Earn Blockchain Game",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 2,
            width: 50,
            color: Colors.red,
          ),
          VideoPlayerScreen(),
        ],
      ),
    );
  }
}
