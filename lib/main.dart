import 'package:flutter/material.dart';
import 'package:learn_getx/home/home.dart';
import 'package:get/get.dart';
import 'package:learn_getx/home/main_page.dart';
import 'package:learn_getx/routes/routes.dart';

import 'localization/localization_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: '/',
      getPages: routes,
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.falbacklocale,
      translations: LocalizationService(),
      // home:const Home(),
    );
  }
}
