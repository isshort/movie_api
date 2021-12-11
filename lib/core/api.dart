import 'dart:convert';

import 'package:http/http.dart';

import 'package:movie_api/core/api_constant.dart';
import 'package:movie_api/model/category.dart';
import 'package:movie_api/model/category_list.dart';

class Api {
  final Client _client;

  Api(this._client);



  dynamic get(String path) async {
    final response = await _client.get(
      Uri.parse("${ApiConstant.BASE_URL}${path}"),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      // print("Everything is normal");
      // print(response.body);
      return json.decode(response.body);
    } else {
      print("Your error");
      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<Category>> getCategory() async {
    final request =
    await _client.get(Uri.parse("http://192.168.96.2:3000/category/list?category=market"));
    print("your request data is ${request} ");
    print("your request data is ${request.body} ");
    print("your request decode is ${json.decode(request.body)} ");

    return categoryFromJson(request.body);
  }

  //   Future<List<CategoryList>> getCategoryList() async {
  //   final request =
  //   await _client.get(Uri.parse("http://192.168.96.2:3000/category/type?category=market"));
  //   print("your request data is ${request} ");
  //   print("your request data is ${request.body} ");
  //   print("your request decode is ${json.decode(request.body)} ");
  //
  //   return categoryListFromJson(request.body);
  // }



}
