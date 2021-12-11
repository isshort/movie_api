
import 'package:movie_api/model/category_list.dart';

class CategoryResultModel {
  List<CategoryList> categories;

  CategoryResultModel({required this.categories});

  factory CategoryResultModel.fromJson(var json) {
    // print("Saala $json");
    var categories = List<CategoryList>.empty(growable: true);
    if (json != null) {
      json.forEach((v) {
        categories.add(CategoryList.fromJson(v));
      });
    }
    return CategoryResultModel(categories: categories);
  }




}
