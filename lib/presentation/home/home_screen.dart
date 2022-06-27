import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/baground_card.dart';
import 'package:netflix/presentation/widgets/main_card_title.dart';
import 'package:netflix/presentation/widgets/numbrt_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true );

class HomeScreen extends StatelessWidget {
  
   HomeScreen({Key? key}) : super(key: key);
  
  // final controller = Get.put(CustomHomecontroller());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, index, _) {
            return NotificationListener<UserScrollNotification>(
              onNotification: (notification) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const BagroundCard(),
                       MainCardTitle(title: "Released in the Past Year" ),
                       MainCardTitle(title: "Trending Now"),
                       NumberTitleCard(),
                       MainCardTitle(title: "Tens Dramas"),
                       MainCardTitle(title: "South Indian Cinema"),
                    ],
                  ),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                        duration: Duration(microseconds: 2000),
                          width: double.infinity,
                          height: size.height * .11,
                          color: Colors.black.withOpacity(.5),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/lognet.png",
                                      width: 40,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: white1,
                                    ),
                                    width10,
                                    SizedBox(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset('assets/netflix.png'),
                                    ),
                                  ],
                                ),
                              ),
                              height20,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                   Text(
                                    "Tv Shows",
                                    style: baestext,
                                  ),
                                   Text(
                                    "Movies",
                                    style:baestext ,
                                    ),
                                  
                                  Text(
                                    "Categories",
                                    style:baestext
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      : height10,
                ],
              ),
            );
          }),
    ));
  }
}
