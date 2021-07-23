import 'package:get/get.dart';
import 'package:get_x_sample/app/models/weather_models/weather_info.dart';

class WeatherState {
  final _weather = WeatherInfo().obs;
  set weather(value) {
    this._weather.value = value;
  }

  get weather {
    return this._weather.value;
  }
}
