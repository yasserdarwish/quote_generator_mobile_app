import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onPressed,
    required this.icon,
    this.controller,
  });
  final void Function()? onPressed;
  final String icon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
