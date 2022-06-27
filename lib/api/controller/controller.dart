import 'package:get/get.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/api/model/home/trending_nw/trendingnow.dart';
import 'package:netflix/api/service/home/custom_home.dart';

import 'package:netflix/api/service/service.dart';

class DownloadController extends GetxController {
  var Datalist = <DownloadsModel>[].obs;
  var Loding = true.obs;

  getData() async {
    Loding.value = true;
    var datas = await DownloadService().getMethod();
    try {
      if (datas != null) {
        Datalist.value = datas;
        Loding.value = false;
      }
    } catch (e) {
      Get.snackbar('oopz', ' $e');
      Loding.value = false;
    }
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }
}
class EveryControll extends GetxController {
  var dataList = <DownloadsModel>[].obs;
  var loding = true.obs;

  getData() async {
    loding.value = true;
    var data = await EveryService().getMethod();
    try {
      if (data != null) {
        dataList.value = data;

        loding.value = false;
      }
    } catch (e) {
      Get.snackbar('oopz', ' $e');
      loding.value = false;
    }
  }
  @override
  void onInit() {
    getData();
    // TODO: implement onInit
    super.onInit();
  }
}
class CustomHomecontroller extends GetxController {
  var datalist = <DownloadsModel>[].obs;
  var loading = true.obs;

  getData() async {
    var data = await CustomHomeService().getDataMethod();
    try {
      if (data != null) {
        datalist.value = data;
      }
    } catch (e) {
      Get.snackbar('oopz', ' $e');
      loading.value = false;
    }
  }

  @override
  void onInit() {
    getData();

    super.onInit();
  }
}
