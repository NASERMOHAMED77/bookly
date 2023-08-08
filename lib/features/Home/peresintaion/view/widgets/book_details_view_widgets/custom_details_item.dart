import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomBookDetailsItem extends StatelessWidget {
  CustomBookDetailsItem(
      {super.key,
      required this.outher,
      required this.title,
      required this.url});
  final String title;
  final String url;
  final String outher;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: url,
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: SizedBox(
            child: Text(
              title,
              style: FontStyles.textStyle30,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          outher,
          style: FontStyles.textStyle14,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: 15,
        ),
        Rating(
          rate: 4,
          count: 404,
        )
      ],
    );
  }
}
