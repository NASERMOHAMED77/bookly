// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/errors/error.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp({
    required this.apiService,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async{
    List<BookModel> books = [];
    try {
      var data = await apiService.get(
          'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      for (var e in data["items"]) {
        try {
          books.add(BookModel.fromJson(e));
        } catch (e) {
          print(e);
        }
      }
      return right(books);
    } catch (e) {
      print(e);
    }
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) {
    // TODO: implement fetchSimilarBooks
    throw UnimplementedError();
  }
}
