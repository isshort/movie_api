import 'package:dartz/dartz.dart';
import 'package:movie_api/core/error_handle.dart';
import 'package:movie_api/entities/category_entity.dart';
import 'package:movie_api/service/category_remote_source.dart';

abstract class CategoryRepository {
  Future<Either<ErrorHandle, List<CategoryEntity>>> getCategory(String path);
}

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryRemoteSource categoryRemoteSource;

  CategoryRepositoryImpl(this.categoryRemoteSource);

  @override
  Future<Either<ErrorHandle, List<CategoryEntity>>> getCategory(
      String path) async {
    try {
      final _categories = await categoryRemoteSource.getCategoriesList(path);
      print("Your categories are ${_categories[0]}");
      return Right(_categories);
    } catch (e) {
      // print("Hello Nemat $e");
      return Left(ErrorHandle(e.toString()));
    }
  }
}
