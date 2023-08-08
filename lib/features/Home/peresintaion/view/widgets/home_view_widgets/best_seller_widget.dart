// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:bookly/constants.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/peresintaion/view/widgets/home_view_widgets/rating.dart';

import '../../../../../../core/utils/styles.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    Key? key,
    required this.bookModel,
  }) : super(key: key);
  final BookModel bookModel;
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        bookModel.volumeInfo.imageLinks.thumbnail.toString(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                    ),
                  ),
                ),
              )),
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
                  bookModel.volumeInfo.title.toString(),
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
                child: Text(
                  bookModel.volumeInfo.authors![0].toString(),
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
                    child: Rating(
                      count: 500,
                      rate: 4,
                    ),
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
