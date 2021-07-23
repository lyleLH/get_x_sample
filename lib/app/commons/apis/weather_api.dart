import 'package:get_x_sample/app/commons/network/YKNetWorking.dart';
import 'package:get_x_sample/app/models/weather_models/weather_info.dart';

class WeatherApi {
// Get request
  static Future<WeatherInfo> searchWeather(String city) async {
    var param = {"appid": "fd5489917aec099715785ebd7593340d", "q": city};
    var response = null;
    try {
      response = await YKNetWorking.request().get(
          "http://api.openweathermap.org/data/2.5/weather",
          queryParameters: param);
    } catch (e) {
      print(e);
    }
    return WeatherInfo.fromJson(response.data);
  }
}
