import 'package:celebritysgapp/view/pages/Pages/home/home.dart';
import 'package:celebritysgapp/widget/White_custom_TextField.dart';
import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Column(
                children: [
                  ListTile(
                    trailing: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            "images/logo.jpg",
                            height: 100,
                            width: 100,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Stand a chance to win one of the 10 Darkkey Nagaraja Celebrity NFTs we give away.",
                          style: myStyles16(),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Don’t miss it, it is worth SGD 399.",
                          style: myStyles16(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Name*",
                          style: myStyles16(),
                        ),
                        WhiteCustomTextField(
                          hintText: "Name",
                        ),
                        Text(
                          "Email*",
                          style: myStyles16(),
                        ),
                        WhiteCustomTextField(
                          hintText: "Email",
                        ),
                        Text(
                          "Mobile*",
                          style: myStyles16(),
                        ),
                        WhiteCustomTextField(
                          hintText: 'Mobile',
                        ),
                        Gap(10),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => HomePage()));
                          },
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                              child: Text(
                                "Back",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
