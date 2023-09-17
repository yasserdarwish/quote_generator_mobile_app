import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button_favorite_view.dart';

class FavoriteQuoteItem extends StatelessWidget {
  const FavoriteQuoteItem({super.key});

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
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  '“All I required to be happy was friendship and people I could admire.”',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
                ),
                subtitle: Text(
                  'Christian Dior',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.end,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: CustomButtonFavoriteView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
