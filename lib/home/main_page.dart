import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/constants/app_styles.dart';
import 'package:learn_getx/controller/my_controller.dart';
import 'package:learn_getx/home/main_page1.dart';
import 'package:learn_getx/home/student.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(() => Text(' counter ${myController.count}')),
            ),
            Center(
                child: Text(
              'This is Main Screen',
              style: kPoppinMedium.copyWith(
                fontSize: 20,
              ),
            )),
            Center(
              child: TextButton(
                onPressed: () {
                  // Get.back(result: true);
                  Get.toNamed('/');
                },
                child: Text(
                  'Go Back',
                  style:
                      kPoppinSemiBold.copyWith(color: Colors.red, fontSize: 16),
                ),
              ),
            ),
            // Text(
            //     'My Name is: ${Get.parameters['name']} and description is ${Get.parameters['desc']}'),
            Text(
              'My Name is: ${Get.arguments}',
              style: kPoppinBold.copyWith(fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),

            TextButton(onPressed: () {}, child: const Text('convert to upper')),
            TextButton(
                onPressed: () {
                  myController.counter();
                },
                child: const Text('count')),
            TextButton(
                onPressed: () {
                  Get.toNamed('/mainpage1');
                },
                child: const Text('Go--->')),
            TextButton(
                onPressed: () {
                  Get.toNamed('/translationpage');
                },
                child: const Text('Go to Translation Page')),
          ]),
    );
  }
}
