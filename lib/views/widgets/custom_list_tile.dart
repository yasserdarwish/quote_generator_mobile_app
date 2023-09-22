import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuoteCubit, QuoteState>(
      builder: (context, state) {
        return ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            BlocProvider.of<QuoteCubit>(context).quote?.content ??
                'Sorry no quotes',
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
          ),
          subtitle: Text(
            BlocProvider.of<QuoteCubit>(context).quote?.author ?? 'Author',
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            textAlign: TextAlign.end,
          ),
        );
      },
    );
  }
}
