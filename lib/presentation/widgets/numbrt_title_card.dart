import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  List<DownloadsModel> items;
  NumberTitleCard({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: const MainTitle(title: "Top 10 TV Shows in India Today"),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(items.length, (index) {
                final data = items[index];
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Stack(
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
                                borderRadius:
                                    BorderRadius.circular(10), // Image border
                                child: SizedBox.fromSize(
                                  size:
                                      const Size.fromRadius(10), // Image radius
                                  child: Image.network(
                                      baseImage + data.image.toString(),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            left: -10,
                            // right: 120,
                            top: 40,
                            // bottom: 20,
                            child: BorderedText(
                                strokeColor: white1,
                                strokeWidth: 5.0,
                                child: Text("${index + 1}",
                                    style: TextStyle(
                                      // fontFamily: hedline,
                                      fontSize: 170,
                                      decoration: TextDecoration.none,

                                      color: bg,
                                    ))))
                      ],
                    ));
              })),
        )
      ],
    );
  }
}
