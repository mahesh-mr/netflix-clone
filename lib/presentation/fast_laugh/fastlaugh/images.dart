import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/colors/colors.dart';

class ImagesView extends StatelessWidget {
  List<DownloadsModel> items;
  ImagesView({Key? key, required this.items}) : super(key: key);
  HomeController controller = Get.put(HomeController());
  // final controller = Get.put(CustomHomecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (BuildContext contex, index) {
                  final datas = items[index];

                  return Stack(
                    children: [
                      // Image.network(baseImage+datas.image.toString(),fit: BoxFit.cover,),
                      Container(
                        height: MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top -
                            // kToolbarHeight -
                            kBottomNavigationBarHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                'http://image.tmdb.org/t/p/w500' +
                                    datas.image.toString(),
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              datas.title.toString(),
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),

                      //left side
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.black.withOpacity(.3),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const FaIcon(
                                        FontAwesomeIcons.volumeXmark,
                                        size: 35,
                                      ))),
                              // ignore: prefer_const_constructors

                              //right side----------------------------------------

                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Stack(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        CircleAvatar(
                                            radius: 35,
                                            backgroundImage: NetworkImage(
                                                'http://image.tmdb.org/t/p/w500' +
                                                    datas.image.toString())),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 50, left: 10),
                                          child: Text(
                                            "HUSTLE",
                                            style: TextStyle(),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  const VideoActions(
                                      icon: Icons.emoji_emotions, title: "LOL"),
                                  const VideoActions(
                                      icon: Icons.add, title: "My List"),
                                  const VideoActions(
                                      icon: CupertinoIcons.paperplane,
                                      title: "Share"),
                                  const VideoActions(
                                      icon: CupertinoIcons.play_fill,
                                      title: "Play"),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                })));
  }
}

class VideoActions extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActions({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: white1,
            size: 40,
          ),
          Text(title)
        ],
      ),
    );
  }
}
