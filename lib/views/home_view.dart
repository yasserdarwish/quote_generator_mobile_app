import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/views/widgets/background_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundContainer(),
        ],
      ),
    );
  }
}
