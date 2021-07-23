import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/app/modules/repo/widgets/repos_list_view.dart';
import 'package:get_x_sample/app/modules/repo/widgets/widgets.dart';

import '../index.dart';

/// hello
class HelloWidget extends GetView<RepoController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepoSearchView(),
        Divider(
          height: 30,
        ),
        Expanded(
          child: Container(
            child: RepoListView(),
          ),
        )
      ],
    );
  }
}
