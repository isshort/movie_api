import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:movie_api/core/api.dart';
import 'package:movie_api/repositories/category_repository.dart';
import 'package:movie_api/service/category_remote_source.dart';
import 'package:movie_api/use_case/get_category.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());
  
  getItInstance.registerLazySingleton<Api>(() => Api(getItInstance()));

  getItInstance.registerLazySingleton<CategoryRemoteSource>(() => CategorySourceImpl(getItInstance()));

  getItInstance.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(getItInstance()));

  getItInstance.registerLazySingleton<GetCategory>(() => GetCategory(getItInstance()));

}
