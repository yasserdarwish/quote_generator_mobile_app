import 'package:flutter/material.dart';
import 'package:quote_generator_mobile_app/constants/colors.dart';
import 'package:quote_generator_mobile_app/views/widgets/custom_button_with_loading.dart';

class QuoteItem extends StatelessWidget {
  const QuoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xffFBFBFB),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6))),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const ListTile(
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
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  CustomButtonWithLoading(
                    text: 'Generate Another Quote',
                    color: kPrimaryColor,
                    onPressed: () {},
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
                          border: Border.all(width: 2, color: kPrimaryColor)),
                      child: const Icon(
                        Icons.favorite,
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
  }
}
