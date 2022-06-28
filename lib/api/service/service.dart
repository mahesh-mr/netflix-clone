import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/api/model/comming.dart';


List urls= [
  
 "https://api.themoviedb.org/3/movie/upcoming?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
  "https://api.themoviedb.org/3/movie/now_playing?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
"https://api.themoviedb.org/3/tv/airing_today?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
  "https://api.themoviedb.org/3/movie/top_rated?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
  "https://api.themoviedb.org/3/tv/popular?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
    "https://api.themoviedb.org/3/tv/top_rated?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",

 
];
class DownloadService extends GetxController{
  Future<List<DownloadsModel>?> getMethod(String urls,) async {
    var respose = await http.get(Uri.parse(urls));
    if (respose.statusCode == 200) {
      Map<String, dynamic> body = await json.decode(respose.body);

      List allData = body['results'];

      List<DownloadsModel> modelClassData = allData
          .map(
            (e) => DownloadsModel(
              overview: e['overview'],
              releasedate: e['release_date'],
              title: e['title'],
              image: e['poster_path'],
            ),
          )
          .toList();

      return modelClassData;
    } else {
      return null;
    }
  }
}

