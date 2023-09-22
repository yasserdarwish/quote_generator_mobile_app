import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button_favorite_view.dart';

class FavoriteQuoteItem extends StatelessWidget {
  const FavoriteQuoteItem({super.key, this.quote});
  final QuoteModel? quote;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
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
                  quote?.content ?? 'Sorry No Quotes',
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  quote?.author ?? '',
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomButtonFavoriteView(quote: quote),
              )
            ],
          ),
        ),
      ),
    );
  }
}
