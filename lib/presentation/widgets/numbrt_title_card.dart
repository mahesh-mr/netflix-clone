import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: List.generate(15, (index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Numbercard(
                      index: index,
                    ));
              })),
        )
      ],
    );
  }
}
