import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xff5D13E7),
        Color(0xff8249B5),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
