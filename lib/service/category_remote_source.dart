import 'package:movie_api/core/api.dart';
import 'package:movie_api/entities/category_entity.dart';
import 'package:movie_api/model/category.dart';
import 'package:movie_api/model/category_list.dart';
import 'package:movie_api/model/category_list_result.dart';

abstract class CategoryRemoteSource {
  Future<List<Category>> getCategory(String path);

  Future<List<CategoryList>> getCategoriesList(String path);
}

class CategorySourceImpl extends CategoryRemoteSource {
  final Api _api;

  CategorySourceImpl(this._api);

  @override
  Future<List<Category>> getCategory(String path) async {
    final response = await _api.get(path);
    print("your response is ${response}");
    final categories = categoryFromJson(response);
    print("Your categories are ${categories}");
    return categories;
    // final categories=CategoryEntity.
  }

  @override
  Future<List<CategoryList>> getCategoriesList(String path) async {
    final response = await _api.get(path);
    // print("Your response is ${response}");
    // print("Your response is ${response[0]}");
    final categories = CategoryResultModel.fromJson(response).categories;
    // print("Your categories are ${categories}");
    return categories;
  }
}
