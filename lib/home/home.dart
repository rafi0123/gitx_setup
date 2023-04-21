// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/constants/app_colors.dart';
import 'package:learn_getx/constants/app_styles.dart';
import 'package:learn_getx/home/main_page.dart';

class Home extends StatelessWidget {
  Home({super.key});

  /// This is one way to delear data type using getx

  final name = RxString('');
  final salary = RxDouble(0.0);
  final reg = RxInt(0);
  final items = RxList<String>([]);
  final myMap = RxMap<String, int>({});

  /// This is second way to delear data type using getx and Dart Generic
  final name1 = Rx<String>('');
  final salary1 = Rx<double>(0.0);
  final reg1 = Rx<int>(0);
  final items1 = Rx<List<String>>([]);
  final myMap1 = Rx<Map<String, int>>({});

  var count = 0.obs;
  counter() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(children: [
                Obx(
                  () => Text('Press $count times button'),
                ),
                ElevatedButton(
                    onPressed: () {
                      counter();
                    },
                    child: Text('Count')),
              ]),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      'SnackBar Title',
                      'You Press the Elevated Button',
                      snackPosition: SnackPosition.BOTTOM,
                      duration: const Duration(seconds: 3),
                    );
                  },
                  child: const Text('SnackBar')),
            ),
            Center(
              child: ElevatedButton(
                child: const Text('show Dialog'),
                onPressed: () {
                  Get.defaultDialog(
                      radius: 0,
                      title: 'Default GetX Dialog',
                      content: Column(
                        children: const [
                          Text('hello'),
                          Text('hello'),
                        ],
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text('Ok'),
                            )
                          ],
                        )
                      ]);
                },
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                        backgroundColor: Colors.white,
                        ignoreSafeArea: true,
                        isScrollControlled: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        SizedBox(
                          height: 100,
                          child: Column(
                            children: [
                              Switch(value: true, onChanged: (value) {}),
                              const Text(
                                  'This is my bottom sheet widget in flutter')
                            ],
                          ),
                        ));
                  },
                  child: const Text('BottomSheet')),
            ),
            TextButton(
                onPressed: () async {
                  var data = await Get.to(
                    () => MainPage(),
                    arguments: 'RAFI',
                    transition: Transition.zoom,
                    fullscreenDialog: true,
                    duration: const Duration(seconds: 1),
                    popGesture: true,
                  );
                  if (data == true) {
                    print('rafi');
                  }
                  // Get.toNamed(
                  //   '/main_page ? name = my name is rafi & desc = learning getx',
                  // );
                },
                child: const Text('Go to Main')),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/example1');
              },
              child: Text(
                'Go to Example1 ',
                style: kPoppinSemiBold.copyWith(color: kblack),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/switch');
              },
              child: Text(
                'Switch Example',
                style: kPoppinSemiBold.copyWith(color: kblack),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.toNamed('/favourit');
              },
              child: Text(
                'Favourit List Example',
                style: kPoppinSemiBold.copyWith(color: kblack),
              ),
            )
          ]),
    );
  }
}
