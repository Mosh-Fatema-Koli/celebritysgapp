import 'package:celebritysgapp/view/pages/onboard.dart';
import 'package:celebritysgapp/view/pages/play_video.dart';
import 'package:celebritysgapp/view/pages/splash.dart';
import 'package:get/get.dart';

const String splash = '/splash-screen';
const String Onboard = '/onboard-screen';
const String PlayVideo = '/Play_video-screen';
//const String news = '/news-screen';
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
    name: Onboard,
    page: () => OnboardPage(),
  ),
  GetPage(
    name: PlayVideo,
    page: () => PlayVideoPage(),
  ),
];
