import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_x_sample/app/commons/degree_formate.dart';
import 'package:get_x_sample/app/modules/home/views/weather_show_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  // TODO: implement controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('天气查询'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: Text(
      //     'HomeView is working',
      //     style: TextStyle(fontSize: 20),
      //   ),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            height: 100,
          ),
          _cityWeatherSearchButtonsView(),
          WeatherShowView()
        ],
      ),
    );
  }

  Widget _cityWeatherSearchButtonsView() {
    List cities = ["Shenzhen", "Beijing", "New York", "London", "Alaska"];
    return Expanded(
        child: ListView.builder(
      itemCount: cities.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                controller.searchWeatherWithCityName(cities[index]);
              },
              child: Container(
                  width: 100,
                  child: Text(
                    "${cities[index]}",
                  )),
            ),
          ),
        );
      },
    ));
  }
}
