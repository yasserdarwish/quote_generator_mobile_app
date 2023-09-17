import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/constants/colors.dart';

class CustomButtonFavoriteView extends StatelessWidget {
  const CustomButtonFavoriteView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        minWidth: double.infinity,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: kPrimaryColor, width: 2),
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(6),
                bottomEnd: Radius.circular(6))),
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        onPressed: () {},
        color: Colors.white,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              color: kPrimaryColor,
              size: 32,
            ),
            SizedBox(width: 4),
            Text(
              'Remove From Favorite',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            )
          ],
        ));
  }
}
