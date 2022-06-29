// ignore_for_file: unnecessary_const
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/home/custom_buttons.dart';

class ComingSoon extends StatelessWidget {
  List<DownloadsModel> items ;
  ComingSoon({Key? key,required this.items}) : super(key: key);

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
      ListView.builder(
          itemCount:items.length ,
          itemBuilder: (BuildContext context, index) {
            final data = items[index];
            return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 50,
                      height: 450,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("JUN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white60)),
                          Text(
                            "06",
                            style: TextStyle(
                                fontFamily: hedline,
                                fontSize: 27,
                                letterSpacing: 2),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      width: size.width - 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // videowidget(),
                          Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 200,
                                child: Image.network(
                                    baseImage + data.image.toString(),
                                    fit: BoxFit.cover),
                              ),
                              Positioned(
                                  right: 10,
                                  bottom: 0,
                                  child: CircleAvatar(
                                      radius: 30,
                                      backgroundColor:
                                          Colors.black.withOpacity(.3),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: const FaIcon(
                                            FontAwesomeIcons.volumeXmark,
                                            size: 25,
                                          )))),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: SizedBox(
                                  width: 200,
                                  height: 100,
                                  child: Text(
                                    data.title.toString(),
                                    // overflow: TextOverflow.ellipsis,
                                    // "Evil",
                                    style: const TextStyle(
                                        // fontFamily: GoogleFonts.orbitron().fontFamily,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 30),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 50),
                                child: const CustomButton(
                                  icons: Icons.notifications_none_outlined,
                                  title: 'Remind Me',
                                ),
                              ),
                              height20,
                              Padding(
                                padding: const EdgeInsets.only(bottom: 50),
                                child: const CustomButton(
                                    icons: CupertinoIcons.info, title: "Info"),
                              ),
                              height20
                            ],
                          ),
                          height10,
                          Text(
                            data.releasedate.toString(),
                            // "Coming on Friday",
                            style: const TextStyle(fontWeight: FontWeight.w900),
                          ),
                          // height10,
                          // netflixlog(),
                          height10,
                          Text(
                            data.title.toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900),
                          ),
                          height10,
                          Text(
                            data.overview.toString(),
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ),
                  ],
                ));
          }
          // ComingSoon()
          );
    
  }

  Container netflixlog() {
    return Container(
      height: 15,
      width: 55,
      color: Color.fromARGB(255, 2, 2, 61),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/lognet.png",
            width: 15,
          ),
          const Text(
            "FLIM",
            style: TextStyle(letterSpacing: 1),
          ),
        ],
      ),
    );
  }
}
