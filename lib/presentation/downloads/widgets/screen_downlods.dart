// ignore_for_file: unnecessary_const

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/widgets/wigetappbar.dart';

class Download extends StatelessWidget {
  Download({
    Key? key,
  }) : super(key: key);

  // final controller = Get.put(DownloadController());

  @override
  Widget build(BuildContext context) {
    final _widgetList = [
      const Section1(),
      Section2(),
      const Section3(),
    ];

    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidgets(titie: "Downloads"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListView.separated(
                itemBuilder: (ctx, index) => _widgetList[index],
                separatorBuilder: (ctx, index) =>
                    SizedBox(height: size.width * .2),
                itemCount: _widgetList.length),
          )),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        width10,
        const Icon(
          CupertinoIcons.gear_alt,
          color: white1,
          size: 29,
        ),
        width10,
        const Text("Smart Downloading")
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  // final controller = Get.put(DownloadController());

  final List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/lFhxNXEK0UpXXqSbhba83Zhl2uk.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/bDUcthW9hh4kA4XDi4muJk4DJZc.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/ekZobS8isE6mA53RAiGDG93hBxL.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final datas = controller.Datalist[]

    return Column(children: [
      const Text(
        "Introducing Downlods for you",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 1),
      ),
      height10,
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: const Text(
            "We'll download a personalized selection of movies and shows for you, so there is always something to watch on your device",
            textAlign: TextAlign.center,
            style: TextStyle(color: ngray),
          )),
      SizedBox(
          width: size.width,
          height: size.width * .65,
          // color: white1,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              radius: size.width * 0.31,
              backgroundColor: Colors.grey.withOpacity(.5),
            ),
            // Obx(()=>
            DownloadsImageWidgets(
              imageList: imageList[1],
              margin: const EdgeInsets.only(left: 180),
              angle: 14,
              size: Size(size.width * .30, size.width * 0.45),
            ),
            //  ),
            DownloadsImageWidgets(
              imageList: imageList[2],
              margin: const EdgeInsets.only(
                right: 180,
              ),
              angle: -14,
              size: Size(size.width * .30, size.width * 0.45),
            ),
            DownloadsImageWidgets(
              imageList: imageList[0],
              margin: const EdgeInsets.only(
                top: 15,
              ),
              size: Size(size.width * .32, size.width * 0.50),
            )
          ]))
    ]);
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            height: 40,
            minWidth: 500,
            color: blue1,
            onPressed: () {},
            child: const Text(
              "Set up",
              style: TextStyle(
                  color: white1, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        height10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            color: white1,
            height: 40,
            onPressed: () {},
            child: const Text(
              "See What You Can Download",
              style: TextStyle(
                  color: bg, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    //  final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Image border
          child: SizedBox.fromSize(
            size: const Size.fromRadius(10), // Image radius
            child: Image.network(imageList, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
