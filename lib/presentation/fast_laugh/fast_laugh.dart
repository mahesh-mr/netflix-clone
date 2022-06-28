import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/fast_laugh/fastlaugh/images.dart';

class FastLaugh extends StatelessWidget {
 
  FastLaugh({Key? key, }) : super(key: key);
  HomeController controller = Get.put(HomeController());
  // final controller = Get.put(CustomHomecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child:ImagesView(items: controller.poppuler)
           

        ));}}