import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/constants/app_styles.dart';
import 'package:learn_getx/controller/my_controller.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Set Notifications',
                  style: kPoppinRegular.copyWith(fontSize: 14),
                ),
                Obx(
                  () => Switch(
                      value: controller.switchValue.value,
                      onChanged: (value) {
                        controller.setNotification(value);
                      }),
                ),
              ],
            ),
          )
        ],
      ))),
    );
  }
}
