import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/views/widgets/favorite_quote_item.dart';

class QuotesListView extends StatelessWidget {
  const QuotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount:
                  BlocProvider.of<QuoteCubit>(context).searchedList.length,
              itemBuilder: (context, index) {
                return FavoriteQuoteItem(
                    quote: BlocProvider.of<QuoteCubit>(context)
                        .searchedList[index]);
              }),
        );
      },
    );
  }
}
