// To parse this JSON data, do
//
//     final categoryList = categoryListFromJson(jsonString);

import 'dart:convert';

List<CategoryList> categoryListFromJson(String str) => List<CategoryList>.from(
    json.decode(str).map((x) => CategoryList.fromJson(x)));

String categoryListToJson(List<CategoryList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryList {
  CategoryList({
    this.id,
    this.path,
    this.parent,
    this.level,
    this.title,
    this.content,
    this.regionId,
    this.culturId,
    this.guid,
    this.tick,
    this.categoryType,
    this.subList,
    this.icon,
  });

  int? id;
  String? path;
  int? parent;
  int? level;
  String? title;
  String? content;
  int? regionId;
  int? culturId;
  String? guid;
  double? tick;
  int? categoryType;
  List<CategoryList>? subList;
  String? icon;

  factory CategoryList.fromJson(Map<String, dynamic> json) {
    return CategoryList(
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
      subList: List<CategoryList>.from(
          json["subList"].map((x) => CategoryList.fromJson(x))),
      icon: json["icon"],
    );
  }

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
        "subList": List<dynamic>.from(subList!.map((x) => x.toJson())),
        "icon": icon,
      };
}
