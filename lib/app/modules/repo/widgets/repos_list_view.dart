import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/app/models/repo_models/items.dart';
import 'package:get_x_sample/app/modules/repo/controller.dart';

class RepoListView extends GetView<RepoController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView.builder(
        itemCount: controller.state.repos.items?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          Items item = controller.state.repos.items[index];
          return ListTile(title: Text("${item.name}"));
          ;
        },
      );
    });
  }
}
