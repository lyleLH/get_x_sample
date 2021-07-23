import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_sample/app/modules/repo/controller.dart';

class RepoSearchView extends GetView<RepoController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: EdgeInsets.only(left: 15),
              child: CupertinoTextField(
                onChanged: (String text) {
                  controller.state.keywords = text;
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: ElevatedButton(
              onPressed: () {
                controller.searchRepoWithInputText(controller.state.keywords);
              },
              child: Text("Search"),
            ),
          )
        ],
      ),
    );
  }
}
