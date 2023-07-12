import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            '4.8',
            style: FontStyles.textStyle18,
          ),
          SizedBox(
            width: 3,
          ),
          Text(
            '(414)',
            style: FontStyles.textStyle14,
          )
        ],
      ),
    );
  }
}
