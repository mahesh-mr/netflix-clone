import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icons,
    required this.title,
   
   
  }) : super(key: key);
final IconData icons;
final String title;


 

  @override
  Widget build(BuildContext context) {
   final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon:Icon(icons,
              color: white1,
              
            )),
        Text(
          title,
         
        )
      ],
    );
  }
}
