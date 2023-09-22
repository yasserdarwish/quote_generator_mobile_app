import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/constants/colors.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';

class CustomFavoriteIcon extends StatelessWidget {
  const CustomFavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        QuoteModel quote = BlocProvider.of<QuoteCubit>(context).quote!;

        if (!BlocProvider.of<QuoteCubit>(context).isThere()) {
          BlocProvider.of<QuoteCubit>(context).addToFavorite(quote);
        } else {
          BlocProvider.of<QuoteCubit>(context).unFavorite(quote);
        }
      },
      child: Container(
        height: 48,
        width: 100,
        decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(6)),
            border: Border.all(width: 2, color: kPrimaryColor)),
        child: BlocBuilder<QuoteCubit, QuoteState>(
          builder: (context, state) {
            return Icon(
              BlocProvider.of<QuoteCubit>(context).icon,
              color: kPrimaryColor,
              size: 32,
            );
          },
        ),
      ),
    );
  }
}
