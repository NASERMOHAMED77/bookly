import 'package:equatable/equatable.dart';

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();
  @override
  // TODO: implement props
  List<Object?> get props=>[];
}


class BestSellerInit extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerSuccess extends BestSellerState {
  final List<BookModel> books;
 const BestSellerSuccess({
    required this.books,
  });
}

class BestSellerFailure extends BestSellerState {
  final String massages;
 const BestSellerFailure({
    required this.massages,
  });
}
