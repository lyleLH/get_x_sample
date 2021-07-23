import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class RepoPage extends GetView<RepoController> {
  // 内容页
  Widget _buildView() {
    return HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    Get.lazyPut<RepoController>(() => RepoController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Github Repo 搜索'),
        centerTitle: true,
      ),
      body: _buildView(),
    );
  }
}
