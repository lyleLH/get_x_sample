import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_x_sample/app/commons/degree_formate.dart';
import 'package:get_x_sample/app/modules/home/controllers/home_controller.dart';

class WeatherShowView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () {
          return Container(
            height: 160,
            child: Column(
              children: [
                Text("${controller.state.weather?.name}"),
                Text("${controller.state.weather?.sys?.country}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "${DegreeFormate.formateDegreeData(controller.state.weather?.main?.tempMin)} ℃"),
                    Text("~"),
                    Text(
                        "${DegreeFormate.formateDegreeData(controller.state.weather?.main?.tempMax)} ℃"),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
