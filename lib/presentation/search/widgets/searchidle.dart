// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class SearchIdle extends StatelessWidget {
  List<DownloadsModel> items;
  
  SearchIdle({Key? key, required this.items}) : super(key: key);
  

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top Searches"),
        height10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) => height10,
              itemCount: items.length,
              itemBuilder: (context, index) {
                final data = items[index];
                return Row(
                  children: [
                    SizedBox(
                      width: Screenwidth * .35,
                      height: Screenwidth * .2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(10), // Image radius
                          child: Image.network(
                              "http://image.tmdb.org/t/p/w500" +
                                  data.image.toString(),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    width20,
                    SizedBox(
                      width: 150,
                      child: Text(
                        data.title.toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      CupertinoIcons.arrowtriangle_right_circle,
                      color: white1,
                      size: 40,
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}
