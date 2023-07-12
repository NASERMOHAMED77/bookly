
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomBookDetailsItem extends StatelessWidget {
  const CustomBookDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/test_image.png'))),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        const SizedBox(
          child: Text(
            'The Book Junjle',
            style: FontStyles.textStyle30,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 7,
        ),
        const Text(
          'Rudyard kiliping',
          style: FontStyles.textStyle14,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 15,
        ),
        Rating()
      ],
    );
  }
}
