// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class FeaturedBookState extends Equatable {
  const FeaturedBookState();
  @override
  // TODO: implement props
  List<Object?> get props=>[];
}


class FeaturedBookInit extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;
  FeaturedBookSuccess({
    required this.books,
  });
}

class FeaturedBookFailure extends FeaturedBookState {
  final String massages;
  FeaturedBookFailure({
    required this.massages,
  });
}
