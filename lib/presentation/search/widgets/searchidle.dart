// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/widgets/main_title.dart';



class SearchIdle extends StatelessWidget {
  SearchIdle({Key? key}) : super(key: key);

  final controller = Get.put(Searchcontroller());

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
              itemCount: controller.datalist.length,
              itemBuilder: (context, index) {
                final data = controller.datalist[index];
                return Row(
      children: [
        SizedBox(
          width: Screenwidth * .35,
          height: Screenwidth * .2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(10), // Image radius
              child: Image.network("http://image.tmdb.org/t/p/w500"+data.image.toString(), fit: BoxFit.cover),
            ),
          ),
        ),
        width20,
         Text(
          "Movie Name",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          CupertinoIcons.arrowtriangle_right_circle,
          color: white1,
          size: 40,
        )
      ],
    );
              }
            
        ),
      )  
      ],
    );
  }
}




