import 'dart:async';

import 'package:get/get.dart';
import '../providers/hasil_provider.dart';

class HomeController extends GetxController {

  late Timer timer;
  final count = 0.obs;
  final hasil = HasilProvider();
  final arus = '0'.obs;
  final daya = '0'.obs;
  final power = '0'.obs;
  @override
  void onInit() {
     timer = Timer.periodic(Duration(milliseconds: 500), (Timer t) => getData());
    super.onInit();
  }

  @override
  void onReady() {
    
    super.onReady();
  }

  @override
  void dispose() {
    Get.delete();
    timer.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  

  @override
  void onClose() {
    timer.cancel();
  }
  void getData() => hasil.getHasil().then((value) {
    arus.value = value['Arus'].toString();
    daya.value = value['Daya'].toString();
    power.value = value['Power'].toString();
  });
}


