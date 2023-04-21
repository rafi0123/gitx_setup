import 'package:get/get.dart';
import 'package:learn_getx/home/favourit_list_example/favourit_list_example.dart';
import 'package:learn_getx/home/home.dart';
import 'package:learn_getx/home/main_page1.dart';
import 'package:learn_getx/home/switch_example/switch_example.dart';
import 'package:learn_getx/home/translation_page.dart';

import '../home/example1/example1.dart';
import '../home/main_page.dart';

class RoutesConst {
  static const String initialRoute = '/';
  static const String mainPage = '/mainpage';
  static const String mainPage1 = '/mainpage1';
  static const String translationPage = '/translationpage';
  static const String example1 = '/example1';
  static const String switchExample = '/switch';
  static const String favouritExample = '/favourit';
}

final routes = [
  GetPage(name: RoutesConst.initialRoute, page: () => Home()),
  GetPage(name: RoutesConst.mainPage, page: () => MainPage()),
  GetPage(name: RoutesConst.mainPage1, page: () => MainPage1()),
  GetPage(name: RoutesConst.translationPage, page: () =>const TranslationPage()),
  GetPage(name: RoutesConst.example1, page: () =>const Example1()),
  GetPage(name: RoutesConst.switchExample, page: () =>const SwitchExample()),
  GetPage(name: RoutesConst.favouritExample, page: () =>const FavouritListExample()),
];
