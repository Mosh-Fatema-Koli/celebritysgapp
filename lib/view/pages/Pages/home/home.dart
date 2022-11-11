// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:celebritysgapp/view/pages/Pages/home/celebrity_nft.dart';
import 'package:celebritysgapp/view/pages/Pages/home/img_animation.dart';
import 'package:celebritysgapp/view/pages/Pages/home/reg.dart';
import 'package:celebritysgapp/view/pages/Pages/home/video.dart';
import 'package:celebritysgapp/view/pages/Pages/home/view_all.dart';
import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset("videos/grighundRace.mp4");

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 18, 31),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: 950,
            child: Stack(
              children: [
                Image.asset(
                  'images/banner.jpg',
                  fit: BoxFit.cover,
                  height: 950,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "First In The World",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "D S   L E G E N D S   P T E   L T D   \n\nP R E S E N T S",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CELEBRITY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "GAME",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          "NFTS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 380,
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
                    )),
                  ),
                ),
                Positioned(
                  top: 499,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => RegPage()));
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
                                  Color.fromARGB(255, 17, 53, 170),
                                  Color.fromARGB(255, 163, 8, 190),
                                ],
                              )),
                          child: Text(
                            "REGISTER YOUR INTEREST",
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
                Positioned(
                  top: 550,
                  left: 0,
                  right: 0,
                  child: Padding(
                      padding: const EdgeInsets.all(50), child: ImgPage()),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
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
                    "Play To Earn",
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
                VideoPlayerScreen(),
                SizedBox(height: 30),
                Text(
                  "Synopsis",
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 35, 126),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Text(
                  "Your celebrities own wide variety of animals for Metaverse Racing World. When you buy their NFT, you can stake your NFT in the racing animal and win as much as you want. Buy the NFT and start earning from 1 December 2022. Only 2000 Darkkey Nagaraja NFTs are available.",
                  style: myStyles16(),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
              child: Text(
            "How It Works",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Divider(
              indent: 98,
              endIndent: 95,
              color: Colors.pinkAccent,
              thickness: 3,
              height: 5,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)),
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 87, 78, 216),
                              Color.fromARGB(255, 175, 6, 71),
                            ],
                          )),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.account_balance_wallet_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Login with your wallet",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)),
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 87, 78, 216),
                              Color.fromARGB(255, 175, 6, 71),
                            ],
                          )),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Buy our NFTs",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.grey, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(20)),
              height: 200,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 87, 78, 216),
                              Color.fromARGB(255, 175, 6, 71),
                            ],
                          )),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          Icons.ballot_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Start Earning at our Play To Earn Platforms.",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewAllPage()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 221, 78, 202),
                          Color.fromARGB(255, 240, 5, 161),
                        ],
                      )),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
              child: Text(
            "Celebrity NFTs",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: Divider(
              indent: 98,
              endIndent: 95,
              color: Colors.pinkAccent,
              thickness: 3,
              height: 5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'NFTs from',
                children: const <TextSpan>[
                  TextSpan(
                      text: ' testnet',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 15)),
                  TextSpan(text: ' and'),
                  TextSpan(
                      text: ' mainnet',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 15)),
                  TextSpan(
                      text: ' are for testing purposes only. Only NFTs in'),
                  TextSpan(
                      text: ' Publicnet',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 15)),
                  TextSpan(text: ' has real value.'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CelebrityNFTs(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewAllPage()));
                },
                child: Text(
                  "Pay by DSL and get 30% discount.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewAllPage()));
                },
                child: Text(
                  "Types of NFTs available: 2",
                  style: TextStyle(
                      color: Color.fromARGB(255, 126, 35, 126),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ViewAllPage()));
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
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

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(Icons.menu));
  }
}
