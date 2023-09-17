import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.text,
    this.color,
    this.child,
  });
  final void Function()? onPressed;
  final String? text;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        elevation: 0,
        minWidth: double.infinity,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(6), topEnd: Radius.circular(6))),
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        onPressed: onPressed,
        color: color,
        child: text == null
            ? child
            : Text(
                text!,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff323232),
                ),
              ));
  }
}
