import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/font/font.dart';
import 'package:netflix/core/size/size.dart';

class AppBarWidgets extends StatelessWidget {
  const AppBarWidgets({ Key? key, required this.titie }) : super(key: key);
 final String titie;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        width10,
        Text(titie,style:TextStyle(fontFamily: hedline,fontSize: 25,letterSpacing: 4),),
        const Spacer(),
        const Icon(Icons.cast,color:white1,),
        width10,
        SizedBox(
          width: 20,
          height: 20,
          child: Image.asset('assets/netflix.png'),
        ),
        width10,


 
      ],
    );
  }
}