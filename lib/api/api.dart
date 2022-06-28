// import 'dart:convert';

// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:netflix/api/model/comming.dart';
// import 'package:netflix/api/service/service.dart';
// import 'package:http/http.dart' as http;


// Future<List<DownloadsModel>> getData(String url,String values) async {
    
//     try {
//       var data = await DownloadService().getMethod(values);

   
//       return data!;
//     } catch (e) {
//       Get.snackbar('oopz', ' $e');

     
//       return [];
//     }
//   }
// class EveryService {
  
//   var url =
//       "https://api.themoviedb.org/3/search/movie?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&query=$values&page=1&include_adult=false";

//   Future<List<DownloadsModel>?> getMethod(String values) async {
//     var respose = await http.get(Uri.parse(url));
//     if (respose.statusCode == 200) {
//       Map body = json.decode(respose.body);

//       List allDatas = body['results'];
//       List<DownloadsModel> modelClassData = allDatas
//           .map(
//             (e) => DownloadsModel(
//               overview: e['overview'],
//               releasedate: e['release_date'],
//               title: e['title'],
//               image: e['poster_path'],
//             ),
//           )
//           .toList();

//       return modelClassData;
//     } else {
//       return null;
//     }
//   }
// }
