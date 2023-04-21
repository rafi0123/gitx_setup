// import 'package:flutter/material.dart';
// class FavouritListExample extends StatefulWidget {
//   const FavouritListExample({super.key});
//   @override
//   State<FavouritListExample> createState() => _FavouritListExampleState();
// }
// class _FavouritListExampleState extends State<FavouritListExample> {
//   List<String> furites = ['Apple', 'Mango', 'Banana', 'Orange'];
//   List<String> tempArray = [];
//   @override
//   Widget build(BuildContext context) {
//     debugPrint('build');
//     return Scaffold(
//       body: SafeArea(
//           child: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           ListView.builder(
//               itemCount: furites.length,
//               shrinkWrap: true,
//               itemBuilder: (ctx, i) {
//                 return Card(
//                   child: ListTile(
//                     onTap: () {
//                       if (tempArray.contains(furites[i])) {
//                         tempArray.remove(furites[i]);
//                       } else {
//                         tempArray.add(furites[i]);
//                       }
//                       setState(() {});
//                     },
//                     leading: Text(furites[i]),
//                     trailing: Icon(
//                       Icons.favorite,
//                       color: tempArray.contains(furites[i])
//                           ? Colors.red
//                           : Colors.white,
//                     ),
//                   ),
//                 );
//               })
//         ],
//       )),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/my_controller.dart';

class FavouritListExample extends StatefulWidget {
  const FavouritListExample({super.key});

  @override
  State<FavouritListExample> createState() => _FavouritListExampleState();
}

class _FavouritListExampleState extends State<FavouritListExample> {
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              itemCount: controller.furites.length,
              shrinkWrap: true,
              itemBuilder: (ctx, i) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      if (controller.tempArray
                          .contains(controller.furites[i])) {
                        // controller.tempArray.remove(controller.furites[i]);
                        controller.removeFromFavourit(controller.furites[i]);
                      } else {
                        // controller.tempArray.add(controller.furites[i]);
                        controller.addtoFavourit(controller.furites[i]);
                      }
                    },
                    leading: Text(controller.furites[i]),
                    trailing: Obx(
                      () => Icon(
                        Icons.favorite,
                        color:
                            controller.tempArray.contains(controller.furites[i])
                                ? Colors.red
                                : Colors.white,
                      ),
                    ),
                  ),
                );
              })
        ],
      )),
    );
  }
}
