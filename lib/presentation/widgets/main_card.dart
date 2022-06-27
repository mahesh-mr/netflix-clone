import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
 
  const Maincard({
    Key? key,
  
  
  }) : super(key: key);

 

  @override
  Widget build(BuildContext context) {
      final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*.40,
      height:size.width*.6 ,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10), // Image border
      child: SizedBox.fromSize(
        size: const Size.fromRadius(10), // Image radius
        child: Image.network("https://www.themoviedb.org/t/p/w220_and_h330_face/yMdFsHKp4YX2CUkAQcZswxXDuoe.jpg", fit: BoxFit.cover),
      ),
    ),

    );
  }
}