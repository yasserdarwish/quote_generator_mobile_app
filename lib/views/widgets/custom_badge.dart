import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/extensions.dart';
import 'package:quote_generator_mobile_app/views/favorite_view.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -20),
      badgeContent: BlocBuilder<QuoteCubit, QuoteState>(
        builder: (context, state) {
          return Text(
            BlocProvider.of<QuoteCubit>(context).getFavoriteCount().toString(),
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 22),
          );
        },
      ),
      badgeAnimation: const badges.BadgeAnimation.scale(),
      badgeStyle: const badges.BadgeStyle(
        padding: EdgeInsets.all(10),
        badgeColor: Colors.black,
      ),
      child: CustomButton(
          onPressed: () {
            context.navigateTo(const FavoriteView());
          },
          color: const Color(0xffd0bcef),
          text: 'Click Here To View Favorite Quotes'),
    );
  }
}
