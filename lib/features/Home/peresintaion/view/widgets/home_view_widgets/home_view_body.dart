import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Home/peresintaion/view/book_details_view.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/ListView_books.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/best_seller_widget.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../../../constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            BooksListView(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Best Seller',
                style: FontStyles.textStyle18,
              ),
            ),
          ],
        )),
        SliverToBoxAdapter(
          child: ListViewBestSeller(),
        )
      ],
    );
  }
}

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(onTap: (){
           Get.to(() => BookDetailsView(),
                        transition: Transition.fade,
                        duration: kTranstionDuration);
        },child: BestSellerWidget());
      },
    );
  }
}
