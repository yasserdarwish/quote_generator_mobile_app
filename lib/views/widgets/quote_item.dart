import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/constants/colors.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button_with_loading.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: BlocBuilder<QuoteCubit, QuoteState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
                color: Color(0xffFBFBFB),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      BlocProvider.of<QuoteCubit>(context).quote?.content ??
                          '"Sorry no quotes"',
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      BlocProvider.of<QuoteCubit>(context).quote?.author ??
                          'Author',
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        CustomButtonWithLoading(
                          isLoading: state is QuoteLoading,
                          text: 'Generate Another Quote',
                          color: kPrimaryColor,
                          onPressed: () {
                            BlocProvider.of<QuoteCubit>(context).getQuote();
                          },
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 48,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(6)),
                                border:
                                    Border.all(width: 2, color: kPrimaryColor)),
                            child: const Icon(
                              Icons.favorite_border,
                              color: kPrimaryColor,
                              size: 32,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
