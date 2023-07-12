import 'package:bookly/constants.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 8),
          child: SizedBox(
            height: 135,
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/test_image.png'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'The Book Junjle',
                  style: FontStyles.textStyle20
                      .copyWith(fontFamily: kGtSectraFine),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Rudyard kiliping',
                  style: FontStyles.textStyle14,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  Text(
                    '19.99 \$ ',
                    style: FontStyles.textStyle20
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Rating(),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
