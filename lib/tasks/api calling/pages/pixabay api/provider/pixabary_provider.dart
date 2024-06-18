import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:regular_tasks/tasks/api%20calling/pages/pixabay%20api/model/pixabay_model.dart';

import '../../../api service/api_service.dart';

class PixabayProvider extends ChangeNotifier {
  PixabayModel? model;
  Map<String, dynamic>? data;
  bool isLoading = true;

  Future<void> fetchData(String category) async {
    isLoading = true;
    notifyListeners();
    String? json = await ApiService().callApi('https://pixabay.com/api/?key=44442839-3febc9ca917a201f049adfeb6&q=$category&image_type=photo&per_page=50');

    data = jsonDecode(json);
    model = PixabayModel.fromJson(data!);
    isLoading = false;
    notifyListeners();
  }

  PixabayProvider() {
    fetchData('nature');
  }
}
