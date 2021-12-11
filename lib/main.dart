import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:movie_api/core/error_handle.dart';
import 'package:movie_api/use_case/get_category.dart';
import 'package:movie_api/use_case/no_params.dart';
import 'entities/category_entity.dart';
import 'package:movie_api/di/get_it.dart' as getIt;

Future<void> main() async {
  final String url = "/category/type?category=market";
  unawaited(getIt.init());
  GetCategory getCategory = getIt.getItInstance<GetCategory>();
  final Either<ErrorHandle, List<CategoryEntity>> eitherResponse =
      await getCategory(url, NoParams());
  eitherResponse.fold((l) {
    print("Your left is ${l}");
    // return l;
  }, (r) {
    print("Your right is ${r}");
    // return r;
  });
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
