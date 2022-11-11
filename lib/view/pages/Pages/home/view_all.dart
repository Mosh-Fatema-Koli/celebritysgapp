import 'package:celebritysgapp/view/pages/Pages/home/V_all_nft.dart';
import 'package:celebritysgapp/view/pages/Pages/home/video2.dart';
import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ViewAllPage extends StatelessWidget {
  const ViewAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: IconButton(
              alignment: Alignment.topLeft,
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Center(
              child: Text(
            "NFTs",
            style: TextStyle(
                color: Color.fromARGB(255, 196, 34, 161), fontSize: 25),
          )),
          Container(height: 500, child: VNftPage()),
          SizedBox(
            height: 20,
          ),
          Text(
            "Pay by DSL and get 30% discount.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    "Sample Play To Earn",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                )),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    "Blockchain Game",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Divider(
                    indent: 98,
                    endIndent: 95,
                    color: Colors.pinkAccent,
                    thickness: 3,
                    height: 5,
                  ),
                ),
                SizedBox(height: 30),
                VideoWorkPage(),
                SizedBox(height: 30),
                Text(
                  "Synopsis",
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 35, 126),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Your celebrities own wide variety of animals for Metaverse Racing World. When you buy their NFT, you can stake your NFT in the racing animal and win as much as you want. Buy the NFT and start earning from 1 December 2022. Only 2000 Darkkey Nagaraja NFTs are available.",
                    style: myStyles18(),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          Gap(50)
        ],
      ),
    );
  }
}
