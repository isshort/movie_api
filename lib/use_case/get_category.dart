import 'package:dartz/dartz.dart';
import 'package:movie_api/core/error_handle.dart';
import 'package:movie_api/entities/category_entity.dart';
import 'package:movie_api/repositories/category_repository.dart';
import 'package:movie_api/use_case/no_params.dart';
import 'package:movie_api/use_case/usecase.dart';

class GetCategory extends UseCase<List<CategoryEntity>,NoParams>{
  final CategoryRepository categoryRepository;

  GetCategory(this.categoryRepository);

  @override
  Future<Either<ErrorHandle, List<CategoryEntity>>> call(String path,NoParams params) async {
    // print("Hello world");
    return await categoryRepository.getCategory(path);
  }
}
