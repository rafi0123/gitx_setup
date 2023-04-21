import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/localization/localization_page.dart';

class TranslationPage extends StatefulWidget {
  const TranslationPage({super.key});

  @override
  State<TranslationPage> createState() => _TranslationPageState();
}

class _TranslationPageState extends State<TranslationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello'.tr),
          Text('how_are_you'.tr),
          Text('Asalam_o_Alikum'.tr),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                LocalizationService().changeLanguage('English');
                setState(() {});
              },
              child: const Text('Change To English'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {
                LocalizationService().changeLanguage('Urdu');
                setState(() {});
              },
              child: const Text('Change to Urdu'),
            ),
          )
        ],
      ))),
    );
  }
}
