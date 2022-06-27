import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:netflix/api/model/comming.dart';


List urls= [
 "https://api.themoviedb.org/3/movie/upcoming?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
 "https://api.themoviedb.org/3/movie/popular?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1",
  "https://api.themoviedb.org/3/trending/all/day?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70",
  "https://api.themoviedb.org/3/search/movie?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&query=spider&page=1&include_adult=false",
];
class DownloadService extends GetxController{
  Future<List<DownloadsModel>?> getMethod(String urls) async {
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

class EveryService {
  var url =
      "https://api.themoviedb.org/3/movie/popular?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1";

  Future<List<DownloadsModel>?> getMethod() async {
    var respose = await http.get(Uri.parse(url));
    if (respose.statusCode == 200) {
      Map body = json.decode(respose.body);

      List allDatas = body['results'];
      List<DownloadsModel> modelClassData = allDatas
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
class CustomHomeService{
  var url1 = "https://api.themoviedb.org/3/trending/all/day?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70";

  Future<List<DownloadsModel>?>getDataMethod()async{
    var respose =await http.get(Uri.parse(url1));
    if(respose.statusCode == 200){
   var body=   await json.decode(respose.body); 

   List allDatas= body['results'];


    List<DownloadsModel> modelClassData = allDatas
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

class TopSearch {
  var url =
      "https://api.themoviedb.org/3/movie/popular?api_key=1fe4508f3dda5e1b9e2aacbf855a7f70&language=en-US&page=1";

  Future<List<DownloadsModel>?> getMethod() async {
    var respose = await http.get(Uri.parse(url));
    if (respose.statusCode == 200) {
      Map body = json.decode(respose.body);

      List allDatas = body['results'];
      List<DownloadsModel> modelClassData = allDatas
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
