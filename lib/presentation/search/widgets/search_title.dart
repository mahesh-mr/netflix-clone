import 'package:flutter/material.dart';
import 'package:netflix/core/size/size.dart';
import 'package:netflix/presentation/search/widgets/title.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

const imaged =  "https://www.themoviedb.org/t/p/w220_and_h330_face/lFhxNXEK0UpXXqSbhba83Zhl2uk.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       MainTitle(title: "Movies & TV"),
        height10,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            crossAxisCount:3,
            childAspectRatio: 1/1.6,
            children: 
             List.generate(21, (index){
              return MainCard();
             })
            
          ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       
     
        child: ClipRRect(
  borderRadius: BorderRadius.circular(10), // Image border
  child: SizedBox.fromSize(
    size: const Size.fromRadius(10), // Image radius
    child: Image.network(imaged, fit: BoxFit.cover),
  ),
),
      
       
    );
  }
}