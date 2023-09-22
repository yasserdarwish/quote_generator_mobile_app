import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/extensions.dart';
import 'package:quote_generator_mobile_app/views/favorite_view.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_badge.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button.dart';

class FavoriteViewButton extends StatelessWidget {
  const FavoriteViewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(
      child: CustomButton(
          onPressed: () {
            context.navigateTo(const FavoriteView());
          },
          text: 'Click Here To View Favorite Quotes'),
    );
  }
}
