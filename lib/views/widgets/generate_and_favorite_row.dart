import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/constants/colors.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button_with_loading.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_favorite_icon.dart';

class GenerateFavoriteRow extends StatelessWidget {
  const GenerateFavoriteRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<QuoteCubit, QuoteState>(
          builder: (context, state) {
            return CustomButtonWithLoading(
              isLoading: state is QuoteLoading,
              text: 'Generate Another Quote',
              color: kPrimaryColor,
              onPressed: () {
                BlocProvider.of<QuoteCubit>(context).getQuote();
              },
            );
          },
        ),
        const SizedBox(width: 10),
        const CustomFavoriteIcon()
      ],
    );
  }
}
