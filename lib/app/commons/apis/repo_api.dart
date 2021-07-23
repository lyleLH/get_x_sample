import 'package:get_x_sample/app/commons/network/YKNetWorking.dart';
import 'package:get_x_sample/app/models/home_repo_models.dart';
import 'package:get_x_sample/app/models/repo_models/repository.dart';
import 'package:get_x_sample/app/models/weather_models/weather_info.dart';

class RepoApi {
// Get request
  static Future<Repository> searchRepo(String keyword) async {
    var param = {"q": keyword};
    var response = null;

    try {
      response = await YKNetWorking.request().get(
          "https://api.github.com/search/repositories",
          queryParameters: param);
    } catch (e) {
      print(e);
    }
    return Repository.fromJson(response.data);
  }
}
