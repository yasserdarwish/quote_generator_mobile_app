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
      elevation: 0,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(4)),
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
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
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
    );
  }
}
