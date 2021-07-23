import 'package:get/get.dart';
import 'package:get_x_sample/app/models/home_repo_models.dart';
import 'package:get_x_sample/app/models/repo_models/items.dart';
import 'package:get_x_sample/app/models/repo_models/repository.dart';

class RepoState {
  // 关键字
  final _keywords = "".obs;
  set keywords(value) => this._keywords.value = value;
  get keywords => this._keywords.value;

  //结果列表
  final _repo = Repository().obs;

  set repos(value) => this._repo.value = value;
  get repos => this._repo.value;
}
