import 'package:get/get.dart';
import 'package:get_x_sample/app/commons/apis/weather_api.dart';
import 'package:get_x_sample/app/modules/home/state/weather_state.dart';

class HomeController extends GetxController {
  final state = WeatherState();
  @override
  void onInit() {
    super.onInit();
    searchWeatherWithCityName("Shenzhen");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  searchWeatherWithCityName(String cityName) async {
    state.weather = await WeatherApi.searchWeather(cityName);
  }
}
