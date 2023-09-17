import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController controller = TextEditingController();
  bool hasText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextField(
        onChanged: (value) {
          hasText = controller.text.isNotEmpty;
          setState(() {});
        },
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: hasText
                ? IconButton(
                    onPressed: () {
                      controller.clear();
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/X Icon.svg',
                    ),
                    iconSize: 24,
                  )
                : null,
            hintText: 'Type Something Here to Search..',
            hintStyle:
                const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            fillColor: Colors.white,
            filled: true,
            contentPadding: const EdgeInsets.all(18),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(6))),
      ),
    );
  }
}
