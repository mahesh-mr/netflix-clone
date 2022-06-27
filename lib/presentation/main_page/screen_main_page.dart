import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downlods.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix/presentation/home/home_screen.dart';
import 'package:netflix/presentation/main_page/widgets/bottam_nav.dart';
import 'package:netflix/presentation/new%20_and_hot/new_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
   HomeScreen(),
     NewAndHot(),
    FastLaugh(),
     Search(),
     Download()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: ValueListenableBuilder(
          valueListenable: indexchangenotifier,
          builder: (context, int index, _) {
            return _pages[index];
          }),
      bottomNavigationBar: const BottamNav(),
    );
  }
}
