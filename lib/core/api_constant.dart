class ApiConstant {
  ApiConstant._();

  // static const String BASE_URL="http://192.168.96.2:3000/category/type?category=market";
  static const String BASE_URL = "http://192.168.96.2:3000";
}

enum ApiServicePath {
  CATEGORY_TYPE,
}

extension APIServicePathExtension on ApiServicePath {
  String get rawValue {
    switch (this) {
      case ApiServicePath.CATEGORY_TYPE:
        return "/category/type";
    }
  }
}
