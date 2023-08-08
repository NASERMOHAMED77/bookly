import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/costom_bookDetails_appBar.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/custom_button.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/custom_details_item.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/book_details_view_widgets/listview_detilsbook.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookDetailsBody extends StatelessWidget {
  BookDetailsBody(
      {super.key,
      required this.outher,
      required this.title,
      required this.url});
  String title;
  String url;
  String outher;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
              child: Column(
            children: [
              CustomBookDetailsAppBar(),
              CustomBookDetailsItem(title: title,url: url,outher: outher,),
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
