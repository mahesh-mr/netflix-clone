import 'package:get/get.dart';
import 'package:netflix/api/model/comming.dart';

import 'package:netflix/api/service/service.dart';

class HomeController extends GetxController {
  List<DownloadsModel> released = [];
  List<DownloadsModel> trending = [];
  List<DownloadsModel> tvaravingtoay = [];
  List<DownloadsModel> newmovies = [];
  List<DownloadsModel> poppuler = [];
  List<DownloadsModel> tvmovie = [];

  var Loding = true.obs;

  Future<List<DownloadsModel>> getData(String url) async {
    Loding.value = true;
    try {
      var data = await DownloadService().getMethod(url);

      Loding.value = false;
      return data!;
    } catch (e) {
      Get.snackbar('oopz', ' $e');

      Loding.value = false;
      return [];
    }
  }

  @override
  void onInit() {
    getData(urls[0]).then((value) {
      released = value;
    });
    getData(urls[1]).then((value) {
      trending = value;
    });
    getData(urls[2]).then((value) {
      tvaravingtoay = value;
    });
    getData(urls[3]).then((value) {
      newmovies = value;
    });
    getData(urls[4]).then((value) {
      poppuler = value;
    });
    getData(urls[4]).then((value) {
      tvmovie = value;
    });

    // TODO: implement onInit
    super.onInit();
  }
}
