import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:regular_tasks/tasks/api%20calling/api%20service/api_service.dart';

import '../model/post_model.dart';

class PostApiProvider extends ChangeNotifier{

  late PostModel _posts;

  PostModel get posts => _posts;

  PostApiProvider(){
    getData();
  }

  Future<void> getData() async {
    String json = await ApiService().callApi('https://dummyjson.com/posts');
    Map data = await jsonDecode(json);

    // convert into object data
    _posts = PostModel.fromJson(data);
  }
}
