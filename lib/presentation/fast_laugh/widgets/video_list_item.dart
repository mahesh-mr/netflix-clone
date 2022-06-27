// // ignore_for_file: prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:netflix/core/colors/colors.dart';
// import 'package:netflix/core/font/font.dart';
// import 'package:netflix/core/size/size.dart';

// class VideoList extends StatelessWidget {
//   final int index;
//   VideoList({Key? key, required this.index}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     return Stack(
//       children: [
//         Container(
//           // color: Colors.accents[index % Colors.accents.length],
//           // child: Image.network(),
          
//         ),
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("HUSTLE",style: TextStyle(fontFamily:hedline,fontSize: 40 ),textAlign: TextAlign.center,)

//             ],
//           ),
//         ),

//         //left side
//         Positioned(
//           bottom: 0,
//           left: 0,
//           right: 0,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CircleAvatar(
//                   radius: 40,
//                   backgroundColor: Colors.black.withOpacity(.3),
                  
//                   child: IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.volumeXmark,size: 35,))),
//                 // ignore: prefer_const_constructors

              

//                 //right side----------------------------------------

//                 Column(
                 
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       child:Stack(
//                         children: [
//                           CircleAvatar(
//                             radius: 35,
//                             backgroundImage: NetworkImage(
//                                 "https://www.themoviedb.org/t/p/w220_and_h330_face/fVf4YHHkRfo1uuljpWBViEGmaUQ.jpg"),
//                           ),
//                          Padding(
//                            padding: const EdgeInsets.only(top: 50,left: 10),
//                            child: Text("HUSTLE",style: TextStyle(fontFamily:hedline,fontSize: 20 ),),
//                          )
//                         ],
//                       ),
//                     ),
//                     VideoActions(icon: Icons.emoji_emotions, title: "LOL"),
//                     VideoActions(icon: Icons.add, title: "My List"),
//                     VideoActions(
//                         icon: CupertinoIcons.paperplane, title: "Share"),
//                     VideoActions(icon: CupertinoIcons.play_fill, title: "Play"),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }


// A