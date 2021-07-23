import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/commons/custom_tab_bar.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: CustomTabbar(),
    ),
  );
}
