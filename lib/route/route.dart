import 'package:celebritysgapp/view/pages/onboard.dart';
import 'package:celebritysgapp/view/pages/Pages/Earn_play/select_game.dart';

import 'package:celebritysgapp/view/pages/splash.dart';
import 'package:get/get.dart';

const String splash = '/splash-screen';
const String onboard = '/onboard-screen';
const String playVideo = '/Play_video-screen';
const String game = '/game-screen';
//const String playEarn = '/play-to-earn-screen';
//const String about = '/aouty-screen';
//const String regForm = '/reg-screen';
//const String drawer = '/menu-screen';

// control our page route flow

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashPage(),
  ),
  GetPage(
    name: onboard,
    page: () => OnboardPage(),
  ),
  GetPage(
    name: game,
    page: () => SelectGamePage(),
  ),
];
