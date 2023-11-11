import 'package:firstproject1/controller/services.dart';
import 'package:get/get.dart';
import '../model/makeupModel.dart';

class Controller extends GetxController {
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  RxBool loading = true.obs;

  //var productList = [].obs;
  var productList = Rx<List<Makeup>>([]);

  void fetchData() async {
    try {
      loading(true);
      var res = await AppServices.getData();
      if (res != null) {
        productList.update((val) {
          val!.addAll(res);
        });
      }
    } finally {
      loading.value = false;
    }
  }
}
