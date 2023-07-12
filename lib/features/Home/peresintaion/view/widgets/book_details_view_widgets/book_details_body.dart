import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/costom_bookDetails_appBar.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/custom_button.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/custom_details_item.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/listview_detilsbook.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
              child: Column(
            children: [
              CustomBookDetailsAppBar(),
              CustomBookDetailsItem(),
              SizedBox(
                height: 40,
              ),
              CustomButton(),
              Expanded(
                child: SizedBox(
                  height: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: FontStyles.textStyle18,
                  ),
                ),
              ),
              SimillarListViewDetailsBook(),
              SizedBox(
                height: 30,
              ),
            ],
          )),
        )
      ],
    );
  }
}
