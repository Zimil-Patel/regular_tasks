import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:regular_tasks/tasks/api%20calling/api%20service/api_service.dart';

import '../model/user_model.dart';

class UserApiProvider extends ChangeNotifier{

  List<UserModel> _usersList = [];

  List<UserModel> get usersList => _usersList;

  UserApiProvider(){
    getData();
  }

  Future<void> getData() async {
    String json = await ApiService().callApi('https://jsonplaceholder.typicode.com/users');
    List data = await jsonDecode(json);

    // convert into object data
    _usersList = data.map((e) => UserModel.getFromJson(e)).toList();
  }
}
