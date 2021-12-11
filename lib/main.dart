import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:movie_api/core/api.dart';
import 'package:movie_api/core/api_constant.dart';
import 'package:movie_api/core/error_handle.dart';
import 'package:movie_api/repositories/category_repository.dart';
import 'package:movie_api/service/category_remote_source.dart';
import 'package:movie_api/use_case/get_category.dart';
import 'package:movie_api/use_case/no_params.dart';

import 'entities/category_entity.dart';

Future<void> main() async {
  final String url = "/category/type?category=market";

  Api api = Api(Client());
  CategoryRemoteSource remoteSource = CategorySourceImpl(api);
  // remoteSource.getCategoriesList("/category/type?category=market");
  CategoryRepository categoryRepository = CategoryRepositoryImpl(remoteSource);
  // categoryRepository.getCategory("/category/type?category=market");
  GetCategory getCategory = GetCategory(categoryRepository);
  // getCategory("/category/type?category=market");

  // final Either<ErrorHandle,List<Category>>
  final Either<ErrorHandle, List<CategoryEntity>> eitherResponse =
      await getCategory(url, NoParams());
  eitherResponse.fold((l) {
    print("Your left is $l");
    // return l;
  }, (r) {
    print("Your right is $r");
    // return r;
  });

  // api.getCategory();
  // api.getCategoryList().then((value) => {
  //   print("value is ${value[0].subList![0].title}"),
  // });

  // CategoryRemoteSource remoteSource=CategorySourceImpl(api);
  // remoteSource.getCategory("/category/list?category=market");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
