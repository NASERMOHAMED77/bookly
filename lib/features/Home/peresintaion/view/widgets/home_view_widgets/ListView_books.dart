import 'package:bookly/constants.dart';
import 'package:bookly/core/widget/custom_error_widget.dart';
import 'package:bookly/features/Home/peresintaion/manager/fearturedbook_cubit/featured_book_state.dart';
import 'package:bookly/features/Home/peresintaion/manager/fearturedbook_cubit/featurred_book_cubit.dart';
import 'package:bookly/features/Home/peresintaion/view/book_details_view.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookFailure) {
          return CustomErrorWidget(errMessage: state.massages);
        } else if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {
                          Get.to(() => BookDetailsView(bookModel: state.books[index],),
                              duration: kTranstionDuration);
                        },
                        child: CustomListViewItem(
                          url: state.books[index].volumeInfo.imageLinks
                                  .thumbnail ??
                              '',
                        )),
                  );
                }),
          );
        } else if (state is FeaturedBookLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
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
