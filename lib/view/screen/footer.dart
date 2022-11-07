import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterPage extends StatefulWidget {
  const FooterPage({super.key});

  @override
  State<FooterPage> createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            "Contact Us",
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Made with ❤ by DS Legends Pte. Ltd.",
            style: TextStyle(
                color: Color.fromARGB(255, 126, 35, 126),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 0,
            endIndent: 0,
            height: 2,
            thickness: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "© Copyright 2022 celebrity.sg",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  launch('https://www.facebook.com/dslsingapore/');
                },
                child: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://twitter.com/dslsingapore/'),
                child: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://www.instagram.com/dslsingapore/'),
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://www.tiktok.com/@dslsingapore/'),
                child: FaIcon(
                  FontAwesomeIcons.tiktok,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () =>
                    launch('https://www.linkedin.com/company/dslsingapore/'),
                child: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://www.pinterest.com/dslsingapore/'),
                child: FaIcon(
                  FontAwesomeIcons.pinterest,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://dslsingapore.medium.com/'),
                child: FaIcon(
                  FontAwesomeIcons.m,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://t.me/dslsg'),
                child: FaIcon(
                  FontAwesomeIcons.telegram,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              SizedBox(width: 8),
              InkWell(
                onTap: () => launch('https://www.youtube.com/c/DSLIVE13'),
                child: FaIcon(
                  FontAwesomeIcons.youtube,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
