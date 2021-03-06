import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';

class EveryonesWatch extends StatelessWidget {
  List<DownloadsModel> items;
  EveryonesWatch({Key? key, required this.items}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, index) {
          final data = items[index];
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                height10,

                Text(
                  data.title.toString(),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w900),
                ),
                height10,
                Text(
                  data.overview.toString(),
                  style: const TextStyle(fontSize: 14),
                  maxLines: 5,
                ),
                height20,
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: data.image == null
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Image.network(baseImage + data.image.toString(),
                              fit: BoxFit.cover),
                    ),
                    Positioned(
                        right: 10,
                        bottom: 0,
                        child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.black.withOpacity(.3),
                            child: IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.volumeXmark,
                                  size: 25,
                                )))),
                  ],
                ),
                height10,
                // videowidget(),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: 200,
                          height: 100,
                          child: Text(
                            data.title.toString(),
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                color: white1,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: CustomButton(
                          icons: CupertinoIcons.paperplane, title: "Share"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child:  CustomButton(icons: Icons.add, title: "My List"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: CustomButton(
                          icons: CupertinoIcons.play_fill, title: "Play"),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
