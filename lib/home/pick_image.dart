// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Test extends StatelessWidget {
//   Test({super.key});

//   final MyCotroller controller = Get.put(MyCotroller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Center(
//                   child: CircleAvatar(
//                     backgroundImage: controller.imagePath.isNotEmpty
//                         ? FileImage(File(controller.imagePath.toString()))
//                         : null,
//                   ),
//                 ),
//             controller.imagePath.isNotEmpty
//                 ? Image.asset(
//                     'assets/images/edit_profile.png',
//                     height: 30,
//                     width: 30,
//                   )
//                 : Image.file(File(controller.imagePath.toString())),
//             TextButton(
//                 onPressed: () {
//                   controller.getImage(ImageSource.camera);
//                 },
//                 child: Text('Pick Image'))
//           ]),
//     );
//   }
// }
