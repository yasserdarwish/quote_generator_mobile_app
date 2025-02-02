import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/views/widgets/background_container.dart';
import 'package:quote_generator_mobile_app/views/widgets/favorite_view_button.dart';
import 'package:quote_generator_mobile_app/views/widgets/quote_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundContainer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FavoriteViewButton(),
                QuoteItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
