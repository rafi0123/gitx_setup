import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/my_controller.dart';

class Example1 extends StatefulWidget {
  const Example1({super.key});

  @override
  State<Example1> createState() => _Example1State();
}

class _Example1State extends State<Example1> {
  final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(controller.opacity.value),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.getOpacity(value);
                })),
          ],
        ),
      )),
    );
  }
}
