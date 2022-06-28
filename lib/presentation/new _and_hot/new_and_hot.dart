// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/coming_soon.dart';
import 'package:netflix/presentation/new%20_and_hot/widgets/everyonce_watch.dart';

class NewAndHot extends StatelessWidget {
  NewAndHot({Key? key}) : super(key: key);

   HomeController
   homeController= Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                "New & Hot",
                style: TextStyle(
                    fontFamily: hedline, fontSize: 25, letterSpacing: 2),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: white1,
                ),
                width10,
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/netflix.png'),
                  ),
                ),
              ],
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: white1,
                  labelColor: bg,
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 16),
                  indicator: BoxDecoration(color: white1, borderRadius: r20),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    const Tab(text: "🍿Coming Soon"),
                    const Tab(
                      text: "👀 Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(children: [
          ComingSoon(items: homeController.trending),
          EveryonesWatch(items:homeController.released ),
        ]),
      ),
    );
  }
}
