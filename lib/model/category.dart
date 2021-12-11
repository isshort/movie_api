// To parse this JSON data, do
//
//     final category = categoryFromJson(jsonString);

import 'dart:convert';

import 'package:movie_api/entities/category_entity.dart';

List<Category> categoryFromJson(String str) =>
    List<Category>.from(json.decode(str).map((x) => Category.fromJson(x)));

String categoryToJson(List<Category> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Category extends CategoryEntity {
  Category({
    required this.id,
    required this.path,
    this.parent,
    this.level,
    required this.title,
    required this.content,
    this.regionId,
    this.culturId,
    this.guid,
    this.tick,
    required this.categoryType,
    this.subList,
    required this.icon,
  }) : super(
            id: id,
            path: path,
            title: title,
            content: content,
            categoryType: categoryType,
            icon: icon);

  int id;
  String path;
  int? parent;
  int? level;
  String title;
  String content;
  int? regionId;
  int? culturId;
  String? guid;
  double? tick;
  int categoryType;
  dynamic? subList;
  String icon;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        path: json["path"],
        parent: json["parent"],
        level: json["level"],
        title: json["title"],
        content: json["content"],
        regionId: json["regionId"],
        culturId: json["culturId"],
        guid: json["guid"],
        tick: json["tick"].toDouble(),
        categoryType: json["categoryType"],
        subList: json["subList"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "path": path,
        "parent": parent,
        "level": level,
        "title": title,
        "content": content,
        "regionId": regionId,
        "culturId": culturId,
        "guid": guid,
        "tick": tick,
        "categoryType": categoryType,
        "subList": subList,
        "icon": icon,
      };
}
