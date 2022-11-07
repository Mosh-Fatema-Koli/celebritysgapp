// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ServiceDrawer extends StatefulWidget {
  const ServiceDrawer({Key? key}) : super(key: key);

  @override
  State<ServiceDrawer> createState() => _ServiceDrawerState();
}

class _ServiceDrawerState extends State<ServiceDrawer> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromRGBO(0, 0, 51, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 22),
              child: ListTile(
                trailing: IconButton(
                  onPressed: () => Scaffold.of(context).closeDrawer(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            ListTile(
                title: Text(
                  'HOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onTap: () => Get.to(HomePage())),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'ABOUT US',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'NEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NewsPage()));
              },
            ),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'HOW IT WORKS',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => WorkPage()));
              },
            ),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'HOW TO MINT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            ListTile(
              title: Text(
                'PLAY TO EARN',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PlayEarnPage()));
              },
            ),
            DottedLine(
              dashColor: Colors.white,
              dashGapLength: 2,
              dashLength: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 80, top: 20),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue,
                          Colors.pink,
                        ],
                      )),
                  child: Row(
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
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
