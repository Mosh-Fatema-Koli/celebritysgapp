import 'package:celebritysgapp/route/route.dart';
import 'package:celebritysgapp/view/pages/play_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                'images/banner.gif',
                fit: BoxFit.cover,
                height: 700,
                width: MediaQuery.of(context).size.width,
              ),
              SizedBox(
                height: 10,
              ),
              Positioned(
                top: 20,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "First In The World",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "D S   L E G E N D S   P T E   L T D   \nP R E S E N T S",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 160,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "CELEBRITY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: Text(
                          "NFTS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 300,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Expanded(
                      child: RichText(
                    text: TextSpan(
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Celebrity.sg',
                            style: TextStyle(
                                color: Color.fromARGB(255, 12, 88, 150),
                                fontWeight: FontWeight.w800,
                                fontSize: 16)),
                        TextSpan(
                            text:
                                ' NFTs can be used in Play to Earn \nBlockchain Games and can be sold for higher price \nwhen the demand increases. Only 2000 NFTs for \neach Celebrity.',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w800,
                                fontSize: 16)),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
              Positioned(
                top: 450,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Play Trial Game And Win DSL",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              Positioned(
                top: 510,
                left: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(PlayVideo);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 238, 5, 207),
                                Color.fromARGB(255, 133, 40, 3),
                              ],
                            )),
                        child: Text(
                          "Click To Play ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
