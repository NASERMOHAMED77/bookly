import 'package:equatable/equatable.dart';

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class SimillarBookState extends Equatable {
  const SimillarBookState();
  @override
  // TODO: implement props
  List<Object?> get props=>[];
}


class SimillarBookInit extends SimillarBookState {}

class SimillarBookLoading extends SimillarBookState {}

class SimillarBookSuccess extends SimillarBookState {
  final List<BookModel> books;
  SimillarBookSuccess({
    required this.books,
  });
}

class SimillarBookFailure extends SimillarBookState {
  final String massages;
  SimillarBookFailure({
    required this.massages,
  });
}
