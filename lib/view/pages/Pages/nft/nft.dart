import 'package:celebritysgapp/view/pages/Pages/home/V_all_nft.dart';
import 'package:celebritysgapp/widget/brand_colors.dart';
import 'package:flutter/material.dart';

class NFTPage extends StatelessWidget {
  const NFTPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                "Celebrity NFTs",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 2,
                width: 50,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 238, 5, 207),
                    Color.fromARGB(255, 151, 16, 84),
                  ],
                )),
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
              Container(
                height: MediaQuery.of(context).size.height,
                child: VNftPage(),
              )
            ],
          )
        ],
      ),
    );
  }
}
