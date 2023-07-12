
import 'package:bookly/features/Home/peresintaion/view/book_details_view.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/custom_listview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../constants.dart';


class SimillarListViewDetailsBook extends StatelessWidget {
  
  const SimillarListViewDetailsBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .13,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => BookDetailsView(),
                        transition: Transition.fade,
                        duration: kTranstionDuration);
                  },
                  child: CustomListViewItem()),
            );
          }),
    );
  }
}
