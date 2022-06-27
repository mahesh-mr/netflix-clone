import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/api/model/home/trending_nw/trendingnow.dart';
import 'package:netflix/api/service/home/custom_home.dart';

import 'package:netflix/api/service/service.dart';



class HomeController extends GetxController {

  List<DownloadsModel> released = [];
  List<DownloadsModel> trending = [];
  List<DownloadsModel> commingsoon = [];
  List<DownloadsModel> fastandlaf = [];


  var Loding = true.obs;

Future<List<DownloadsModel>> getData(String url) async {
    Loding.value = true;
    try{
    var data = await DownloadService().getMethod( url);
  
     
       
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

    // TODO: implement onInit
    super.onInit();
  }



}

class DownloadController extends GetxController {
  var Datalist = <DownloadsModel>[].obs;
  var Loding = true.obs;

  getData() async {
    Loding.value = true;
    var data = await DownloadService().getMethod( urls[1]);
    try {
      if (data != null) {
        Datalist.value = data;
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
class Searchcontroller extends GetxController {
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
