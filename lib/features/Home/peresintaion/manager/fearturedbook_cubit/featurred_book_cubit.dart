
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:bookly/features/Home/peresintaion/manager/fearturedbook_cubit/featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(
    this.homeRepo,
  ) : super(FeaturedBookInit());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBook() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(massages: failure.errMessage));
    }, (books) {
      emit(FeaturedBookSuccess(books: books));
    });
  }
}
