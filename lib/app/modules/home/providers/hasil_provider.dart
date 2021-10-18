import 'package:get/get.dart';

class HasilProvider extends GetConnect {
  @override
  void onInit() {

  }

  Future getHasil() async {
    final response = await get('https://monitoringdayalistrik-default-rtdb.firebaseio.com/Hasil.json');
    print(response.body);
    return response.body;
  }
}
