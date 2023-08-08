// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookly/core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required this.rate,
    required this.count,
  }) : super(key: key);
  final int rate;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.solidStar,
            color: Colors.yellow,
            size: 18,
          ),
          SizedBox(
            width: 7,
          ),
          Text(
            rate.toString(),
            style: FontStyles.textStyle18,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '(' + count.toString() + ')',
            style: FontStyles.textStyle14,
          )
        ],
      ),
    );
  }
}
