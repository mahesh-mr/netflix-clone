import 'package:get/get.dart';
import 'package:netflix/presentation/main_page/screen_main_page.dart';

class SplashController extends GetxController {

@override
  void onReady() {
 
    super.onReady();


    Future.delayed(Duration(seconds: 6),(){
      Get.to(()=>ScreenMainPage(),transition: Transition.fade);

    });
  }


}