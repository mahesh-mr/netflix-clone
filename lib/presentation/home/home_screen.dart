// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/baground_card.dart';
import 'package:netflix/presentation/widgets/main_card_title.dart';
import 'package:netflix/presentation/widgets/numbrt_title_card.dart';
import 'package:netflix/presentation/widgets/relesed_year.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // final controller = Get.put(CustomHomecontroller());
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

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
                  Builder(builder: (context) {
                    return ListView(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // ignore: prefer_const_constructors
                        BagroundCard(),

                        homeController.poppuler == null
                            ? const CircularProgressIndicator()
                            : RelesedHome(
                                title: "Continue Watching for Nivea C M",
                                items: homeController.poppuler),
                        homeController.tvaravingtoay == null
                            ? const CircularProgressIndicator()
                            : MainCardTitle(
                                title: "Released in the Past Year",
                                items: homeController.released,
                              ),
                        homeController.trending == null
                            ? const CircularProgressIndicator()
                            : MainCardTitle(
                                title: "Trending Now",
                                items: homeController.trending,
                              ),
                        NumberTitleCard(items: homeController.tvmovie),
                        homeController.tvaravingtoay == null
                            ? const CircularProgressIndicator()
                            : MainCardTitle(
                                title: "Released in the Past Year",
                                items: homeController.tvaravingtoay),
                        homeController.newmovies == null
                            ? const CircularProgressIndicator()
                            : MainCardTitle(
                                title: "Trending Now",
                                items: homeController.newmovies),

                        //  MainCardTitle(title: "Tens Dramas"),
                        //  MainCardTitle(title: "South Indian Cinema"),
                      ],
                    );
                  }),
                  scrollNotifier.value == true
                      ? AnimatedContainer(
                          duration: const Duration(microseconds: 2000),
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
                                    style: baestext,
                                  ),
                                  LimitedBox(
                                    child: GestureDetector(
                                      onTap: () {
                                        _showCategoriesList(context);
                                      },
                                      child: Row(children: const [
                                        Text("Categories",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        Icon(
                                          Icons.arrow_drop_down_rounded,
                                          color: white1,
                                        )
                                      ]),
                                    ),
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

Future<Object?> _showCategoriesList(BuildContext context) {
  return showGeneralDialog(
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) => Scaffold(
      backgroundColor: Colors.black.withOpacity(.8),
      body: Column(
        children: const [
          SizedBox(height: 50),
          CategoriesListWidget(),
          SizedBox(height: 20),
          ClossButtonWidget(),
          SizedBox(height: 30)
        ],
      ),
    ),
  );
}

class CategoriesListWidget extends StatelessWidget {
  const CategoriesListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (BuildContext _context, int _index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homeCategories[_index],
                // style: GoogleFonts.rubik(
                //   fontSize: 18,
                //   color: Colors.grey,
                //   fontWeight: FontWeight.w500,
                // ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext _cx, int _indx) {
          return const SizedBox(height: 35);
        },
        itemCount: 20,
      ),
    );
  }
}

class ClossButtonWidget extends StatelessWidget {
  const ClossButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.close),
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      radius: 25,
    );
  }
}

List<String> homeCategories = [
  'Home',
  'My List',
  'Available for Download',
  'Hindi',
  'Tamil',
  'Punjabi',
  'Telugu',
  'Malayalam',
  'Marathi',
  'Bengali',
  'English',
  'Action',
  'Anime',
  'Award Winners',
  'Biographical',
  'Blockbusters',
  'Bollywood',
  'Children & Family',
  'Comedies',
  'Documentaries',
  'Dramas',
  'Fantasy',
  'Hollywood',
  'Hurror',
  'International',
  'Indian'
];
