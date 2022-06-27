
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/api/model/comming.dart';
import 'package:netflix/core/size/size.dart';



class MainCardTitle extends StatelessWidget {
  final String title;
  // final String urls;
  List<DownloadsModel> items ;
 
   MainCardTitle({
    required this.title,
    required this.items,
    // required this.urls,
   
    Key? key,
  }) : super(key: key);
  final controller = Get.put(DownloadController());

  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child:Text(
     title ,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: 22, fontWeight: FontWeight.w900, letterSpacing: 1),
    ) ,
        // child:  MainTitle(title:title),
      ),
     LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: 
          List.generate(15, (index){
         final   data = items[index];
            return  Padding(
              // ignore: prefer_const_constructors
              padding:  EdgeInsets.symmetric(horizontal: 6),
              child:SizedBox(
      width: size.width*.40,
      height:size.width*.6 ,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10), // Image border
      child: SizedBox.fromSize(
        size: const Size.fromRadius(10), // Image radius
        child: Image.network(baseImage+data.image.toString(), fit: BoxFit.cover),
      ),
    ),

              )
            );

          })

        
      ),
     )
      
     ],
    );
  }
 
}