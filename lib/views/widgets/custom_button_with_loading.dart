import 'package:flutter/material.dart';

class CustomButtonWithLoading extends StatelessWidget {
  const CustomButtonWithLoading(
      {super.key,
      this.onPressed,
      required this.text,
      this.color,
      this.isLoading = false});
  final void Function()? onPressed;
  final String text;
  final Color? color;
  final bool? isLoading;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadiusDirectional.only(bottomStart: Radius.circular(6))),
      height: 48,
      minWidth: 202,
      onPressed: onPressed,
      color: color,
      child: isLoading!
          ? const SizedBox(
              height: 17,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xffFBFBFB),
              ),
            ),
    );
  }
}
