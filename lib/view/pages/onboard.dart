import 'package:celebritysgapp/view/pages/Screen/nabnar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/banner.gif',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 10,
          ),
          Positioned(
            top: 80,
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
            top: 140,
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
            top: 230,
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
                      "GAME",
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
            top: 450,
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
            top: 580,
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
            top: 630,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                Get.to(LandingPage());
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 151, 17, 51),
                            Color.fromARGB(255, 218, 90, 149),
                          ],
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "LOGIN WITH WALLET",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ],
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
    );
  }
}
