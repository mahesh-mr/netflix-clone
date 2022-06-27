// ignore_for_file: prefer_const_declarations, non_constant_identifier_names, unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:netflix/core/colors/colors.dart';

import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

final images =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/zsEgpTyXTsiECPo08P9qhO6qiJ.jpg";

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       MainTitle(title: "Top Searches"),
        height10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearches(),
              separatorBuilder: (context, index) => height10,
              itemCount: 15),
        ),
      ],
    );
  }
}



class TopSearches extends StatelessWidget {
  const TopSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
          width: Screenwidth * .35,
          height: Screenwidth * .2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(10), // Image radius
              child: Image.network(images, fit: BoxFit.cover),
            ),
          ),
        ),
        width20,
        const Text(
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
}
