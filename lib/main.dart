
import 'package:flutter/material.dart';
import 'package:movie_api/core/api.dart';
import 'package:http/http.dart';
import 'package:movie_api/core/api_constant.dart';
import 'package:movie_api/service/category_remote_source.dart';



Future<void> main() async{


  Api api=Api(Client());
  CategoryRemoteSource remoteSource=CategorySourceImpl(api);
  remoteSource.getCategoriesList("/category/type?category=market");

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
