import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';

class BagroundCard extends StatelessWidget {

  const BagroundCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return  Stack(
          children: [
            Container(
              width: double.infinity,
              height: size.height * .70,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(homeImage))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:  EdgeInsets.only(bottom: size.width*.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CustomButton(icons: CupertinoIcons.add, title: "My List"),
                    _playButton(size),
                     const CustomButton(icons: CupertinoIcons.info, title: "Info"),
                  ],
                ),
              ),
            )
          ],
        );
  }
   TextButton _playButton(Size size) {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(white1)),
        icon: Icon(
          CupertinoIcons.play_arrow_solid,
          size: size.width * .07,
          color: bg,
        ),
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * .025),
          child: Text(
            "Play",
            style: TextStyle(
                fontSize: size.width * .06,
                fontWeight: FontWeight.bold,
                color: bg),
          ),
        ));
  }
}