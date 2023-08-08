import 'package:dartz/dartz.dart';

import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/errors/error.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repo/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  ApiService apiService;
  HomeRepoImp(
    this.apiService,
  );
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    List<BookModel> books = [];
    try {
      var data = await apiService
          .get('volumes?Filtering=free-ebooks&q=subject:programming');
      for (var e in data["items"]) {
        try {
          books.add(BookModel.fromJson(e));
        } catch (e) {
          print(e);
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
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
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    List<BookModel> books = [];
    try {
      var data = await apiService.get(
          'volumes?Filtering=free-ebooks&Sorting=relevance  &q=computer science');
      for (var e in data["items"]) {
        try {
          books.add(BookModel.fromJson(e));
        } catch (e) {
          print(e);
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
