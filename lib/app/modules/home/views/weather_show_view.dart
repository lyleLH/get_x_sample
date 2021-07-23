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
                Text(
                  "${controller.state.weather?.name ?? ""}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
                Text(
                  "${controller.state.weather?.sys?.country ?? ""}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${DegreeFormate.formateDegreeData(controller.state.weather?.main?.tempMin ?? 0)} ℃",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    Text("~"),
                    Text(
                      "${DegreeFormate.formateDegreeData(controller.state.weather?.main?.tempMax ?? 0)} ℃",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
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
