import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_carousel_event.dart';
part 'category_carousel_state.dart';

class CategoryCarouselBloc extends Bloc<CategoryCarouselEvent, CategoryCarouselState> {
  CategoryCarouselBloc() : super(CategoryCarouselInitial()) {
    on<CategoryCarouselEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
