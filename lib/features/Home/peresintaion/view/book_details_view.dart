// ignore_for_file: must_be_immutable

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/peresintaion/manager/similar_cubit/simillar_books_cubit.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  BookDetailsView({super.key, required this.bookModel});
  BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimillarBookCubit>(context)
        .fetchdata(category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBody(
        outher: widget.bookModel.volumeInfo.authors![0].toString(),
        title: widget.bookModel.volumeInfo.title.toString(),
        url: widget.bookModel.volumeInfo.imageLinks.thumbnail.toString(),
      ),
    );
  }
}
