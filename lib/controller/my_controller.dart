import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;
  var count1 = 0;
  counter() {
    if (count >= 0) {
      count++;
    }
  }

  List<String> furites = ['Apple', 'Mango', 'Banana', 'Orange'].obs;
  List<dynamic> tempArray = [].obs;
  addtoFavourit(String value) {
    tempArray.add(value);
  }

  removeFromFavourit(String value) {
    tempArray.remove(value);
  }

  RxBool switchValue = false.obs;

  setNotification(bool value) {
    switchValue.value = value;
  }

  RxDouble opacity = 0.5.obs;

  getOpacity(value) {
    opacity.value = value;
  }

  @override
  void onInit() {
    print('Init State Called');
    super.onInit();
  }

  @override
  void onClose() {
    print('On Close State Called');

    super.onClose();
  }

  delayConter() async {
    await Future<int>.delayed(Duration(seconds: 5));
    this.count1++;
    update();
  }

  cleanTask() {
    print('Controller Killed');
  }

  //  RxString imagePath = "".obs;
  // Future getImage(ImageSource source) async {
  //   final ImagePicker _picker = ImagePicker();
  //   final image = await _picker.pickImage(source: source);
  //   if (image != null) {
  //     imagePath.value = image.path.toString();
  //   } else {
  //     return null;
  //   }
  // }
}
