import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/views/widgets/background_container.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_text_field.dart';
import 'package:quote_generator_mobile_app/views/widgets/favorite_quote_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundContainer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomButton(
                  color: const Color(0xffcdb7f4),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        size: 32,
                      ),
                      SizedBox(width: 3),
                      Text(
                        'Back To Home Screen',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const CustomTextField(),
                const FavoriteQuoteItem()
              ],
            ),
          )
        ],
      ),
    );
  }
}
