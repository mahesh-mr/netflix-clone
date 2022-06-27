
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class MainCardTitle extends StatelessWidget {
  final String title;
 
  const MainCardTitle({
    required this.title,
   
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child:  MainTitle(title:title),
      ),
     LimitedBox(
      maxHeight: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: 
          List.generate(15, (index){
            return  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 6),
              child: Maincard() 
            );

          })

        
      ),
     )
      
     ],
    );
  }
}