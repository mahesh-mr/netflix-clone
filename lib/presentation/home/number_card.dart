import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';

class Numbercard extends StatelessWidget {
  const Numbercard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              height: 150,
              width: 25,
            ),
            SizedBox(
              width: size.width * .40,
              height: size.width * .6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(10), // Image radius
                  child: Image.network(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg",
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            left:-5,
            // right: 120,
            top: 40,
            // bottom: 20,
            child: BorderedText(
               strokeColor: white1,
                strokeWidth: 5.0,
                child: Text("${index+1}",
                    style: TextStyle(
                      fontFamily: hedline,
                      fontSize: 130,
                      decoration: TextDecoration.none,
                     
                      
                      color: bg,
                    
                    ))))
      ],
    );
  }
}
