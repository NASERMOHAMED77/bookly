import 'package:bookly/features/Home/peresintaion/view/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../../../core/utils/styles.dart';
import '../../Home/peresintaion/view/widgets/home_view_widgets/best_seller_widget.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: CustomTextFeild(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Best Seller',
            style: FontStyles.textStyle18,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    Get.to(() => BookDetailsView(),
                        transition: Transition.fade,
                        duration: kTranstionDuration);
                  },
                  child: BestSellerWidget());
            },
          ),
        )
      ],
    );
  }
}

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          suffixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintStyle:
              TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white, width: 2)),
          hintText: 'Search'),
    );
  }
}
