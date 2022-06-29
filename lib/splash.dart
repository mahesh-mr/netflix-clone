

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/splashcontroller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
return
    GetBuilder<SplashController>(
     init: SplashController(),
      builder: (_){
     
       return Scaffold(
      backgroundColor: bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
      
          Center(
            child: DelayedDisplay(
               slidingCurve: Curves.decelerate,
               delay: const Duration(seconds: 2),
              child: Image.asset("assets/netflixtext.png",
              width: 200,),
            ),
          ),
          height10,
         const DelayedDisplay(
            
           delay: Duration(seconds: 3),
            child: CircularProgressIndicator(
              color: Colors.red
            ),
          )
        ],
      
      ),
    );
    });
   
  }
     
 
}