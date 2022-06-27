import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/search/widgets/search_title.dart';
import 'package:netflix/presentation/search/widgets/searchidle.dart';

class Search extends StatelessWidget {
  const Search({ Key? key }) : super(key: key);

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
                backgroundColor: Colors.grey.withOpacity(.3),
               style: TextStyle(color: grey),
              
                prefixIcon: Icon(CupertinoIcons.search,color: ngray),
                suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: ngray,),

              ),
             height10,
           Expanded(child: SearchIdle() )
            // Expanded(child:SearchResult())
            ],
          ),
        )
         )
    );
  }
}