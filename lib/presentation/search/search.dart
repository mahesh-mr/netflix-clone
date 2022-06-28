import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:netflix/api/controller/controller.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';
import 'package:netflix/presentation/search/widgets/searchidle.dart';

import '../../api/search.dart';

class Search extends StatelessWidget {
   Search({ Key? key }) : super(key: key);
 HomeController  homeController= Get.put(HomeController());
  final controller = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CupertinoSearchTextField(
                onChanged: (value){
                  controller.putdata(value.toString());
                  
            
                  

                },
                
                backgroundColor: Colors.grey.withOpacity(.3),
               style: TextStyle(color: grey),
              
                prefixIcon: Icon(CupertinoIcons.search,color: ngray),
                suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: ngray,),

              ),
             height10,
          
                Obx(
                  ()=>
                   Expanded(child:controller.data.isEmpty?SearchIdle(items: homeController.trending):SearchResult()))
              //  :SearchIdle(iems: homeController.trending)
              //  Expanded(child: SearchResult())

       
            // Expanded(child:SearchResult()),
            ],
          ),
        )
         )
    );
  }
}