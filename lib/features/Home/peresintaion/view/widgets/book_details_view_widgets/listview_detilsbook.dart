import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/Home/peresintaion/manager/similar_cubit/simillar_books_cubit.dart';
import 'package:bookly/features/Home/peresintaion/manager/similar_cubit/simillar_books_state.dart';
import 'package:bookly/features/Home/peresintaion/view/book_details_view.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimillarListViewDetailsBook extends StatelessWidget {
  const SimillarListViewDetailsBook({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBookCubit, SimillarBookState>(
      builder: (context, state) {
        if (state is SimillarBookFailure) {
          return CustomErrorWidget(errMessage: state.massages);
        } else if (state is SimillarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .13,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookDetailsView(
                                      bookModel: state.books[index])));
                          print('object');
                        },
                        child: CustomListViewItem(
                          url: state
                              .books[index].volumeInfo.imageLinks.thumbnail
                              .toString(),
                        )),
                  );
                }),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}
