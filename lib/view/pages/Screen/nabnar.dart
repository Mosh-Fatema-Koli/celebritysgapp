import 'package:celebritysgapp/controler/page_controller.dart';
import 'package:celebritysgapp/view/pages/Pages/home/home.dart';
import 'package:celebritysgapp/view/pages/Pages/nft/nft.dart';
import 'package:celebritysgapp/view/pages/Pages/Earn_play/play_to_earn_dsl.dart';
import 'package:celebritysgapp/view/pages/Pages/Race_result/race_result.dart';
import 'package:celebritysgapp/view/pages/Pages/Setting/setting.dart';
import 'package:celebritysgapp/view/pages/Pages/profile/profile.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Color.fromARGB(255, 22, 32, 51),
            unselectedItemColor:
                Color.fromARGB(255, 223, 213, 213).withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 22, 32, 51),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.book_rounded,
                    size: 20.0,
                  ),
                ),
                label: 'Play To Earn',
                backgroundColor: Color.fromARGB(255, 22, 32, 51),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.flip_to_back,
                    size: 20.0,
                  ),
                ),
                label: 'NFT',
                backgroundColor: Color.fromARGB(255, 22, 32, 51),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.scoreboard,
                    size: 20.0,
                  ),
                ),
                label: 'Race Result',
                backgroundColor: Color.fromARGB(255, 22, 32, 51),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(bottom: 7),
                  child: Icon(
                    Icons.person,
                    size: 20.0,
                  ),
                ),
                label: 'Profile',
                backgroundColor: Color.fromARGB(255, 22, 32, 51),
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: true);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              HomePage(),
              EarnDSL(),
              NFTPage(),
              RaceResult(),
              ProfilePage(),
            ],
          )),
    ));
  }
}
