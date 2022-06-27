// ignore_for_file: prefer_const_constructors, prefer_equal_for_default_values

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottamNav extends StatelessWidget {
  const BottamNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
              currentIndex: newIndex,
              onTap: (index) {
                indexchangenotifier.value = index;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: bg,
              selectedItemColor: Colors.white,
              unselectedItemColor: ngray,
              selectedIconTheme: IconThemeData(color: Colors.white),
              unselectedIconTheme: IconThemeData(
                color: Color.fromARGB(255, 90, 88, 88),
              ),


              
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                //--------------------------------------------------
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'home',
                ),

                //---------------------------------------------------
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections_outlined),
                    activeIcon: Icon(Icons.collections),
                    label: 'New & Hot'),
                //-----------------------------------------------------   
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions_outlined),
                  activeIcon: Icon(Icons.emoji_emotions),
                  label: 'Fast Laugh',
                ),
                //------------------------------------------------------
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.search), label: 'Search'),

                //--------------------------------------------------------    
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.arrow_down_circle),
                    activeIcon: Icon(CupertinoIcons.arrow_down_circle_fill),
                    label: 'Downloads'),
              ]);
        });
  }
}
