import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/localization/ur_PK.dart';

import 'en_US.dart';

class LocalizationService extends Translations {
  static const locale = Locale('en_US');
  static const falbacklocale = Locale('ur_PK');
  static const languages = ['English', 'Urdu'];
  static const locales = [Locale('en_US'), Locale('ur_PK')];

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'ur_PK': ur,
      };

  void changeLanguage(String lang) {
    final locale = _getLocalFromLanguages(lang);
    Get.updateLocale(locale);
  }

  _getLocalFromLanguages(String lang) {
    for (int i = 0; i < languages.length; i++) {
      if (lang == languages[i]) return locales[i];
    }
    return Get.locale;
  }
}
