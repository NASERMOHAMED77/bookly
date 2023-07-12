import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                height: 48,
                alignment: Alignment.center,
                child: Text(
                  '19.99\$',
                  style: FontStyles.textStyle20.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffEF8262),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                height: 48,
                child: Text('Free preview',
                    style: FontStyles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
