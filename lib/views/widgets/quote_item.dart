import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_list_tile.dart';
import 'package:quote_generator_mobile_app/views/widgets/generate_and_favorite_row.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem({super.key});

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
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              CustomListTile(),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: GenerateFavoriteRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
