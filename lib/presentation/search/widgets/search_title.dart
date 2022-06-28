import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/api/search.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class SearchResult extends StatelessWidget {
  SearchResult({
    Key? key,
  }) : super(key: key);
  final controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: "Movies & TV"),
        height10,
        Expanded(child: Obx(() {
          return GridView.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.6,
              children: List.generate(controller.data.length, (index) {
                final datas = controller.data[index];
                final image = baseImage + datas.image.toString();
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(10), // Image radius
                    child: datas.image == null
                        ? const Center(
                            child: Text('No image found'),
                          )
                        : Image.network(image, fit: BoxFit.cover),
                  ),
                );
              }));
        }))
      ],
    );
  }
}
