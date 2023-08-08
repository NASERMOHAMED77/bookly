import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:bookly/features/Home/peresintaion/manager/similar_cubit/simillar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillarBookCubit extends Cubit<SimillarBookState> {
  SimillarBookCubit({
    required this.homeRepo,
  }) : super(SimillarBookInit());
  final HomeRepo homeRepo;
  Future<void> fetchdata({required String category}) async {
    emit(SimillarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimillarBookFailure(massages: failure.errMessage));
    }, (book) {
      emit(SimillarBookSuccess(books: book));
    });
  }
}
