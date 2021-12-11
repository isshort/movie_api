import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String path;
  final String title;
  final String content;
  final int categoryType;
  final String icon;

  CategoryEntity({
    required this.id,
    required this.path,
    required this.title,
    required this.content,
    required this.categoryType,
    required this.icon,
  }) : assert(id != null, "Category id must not be null");

  @override
  List<Object> get props => [id, title];

  @override
  bool get stringify => false;
}
