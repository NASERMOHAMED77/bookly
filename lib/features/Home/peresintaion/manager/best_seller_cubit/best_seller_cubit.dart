// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:bookly/features/Home/peresintaion/manager/best_seller_cubit/best_seller_states.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(
    this.homeRepo,
  ) : super(BestSellerInit());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestSellerFailure(massages: failure.errMessage));
    }, (books) {
      emit(BestSellerSuccess(books: books));
    });
  }
}
