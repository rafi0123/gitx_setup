import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/my_controller.dart';

class MainPage1 extends StatelessWidget {
  MainPage1({super.key});

  MyController myController = MyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Life Cycle'),
      ),
      body: Column(children: [
        GetBuilder<MyController>(
            initState:((state) =>  myController.delayConter()),
            dispose:(_)=> myController.cleanTask(),
            builder: (myController) {
              return Text('The value is ${myController.count1}');
            })
      ]),
    );
  }
}
