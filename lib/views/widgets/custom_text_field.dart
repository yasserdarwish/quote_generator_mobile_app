import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';

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
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        onChanged: (value) {
          hasText = controller.text.isNotEmpty;
          BlocProvider.of<QuoteCubit>(context).filterSearchResults(value);

          setState(() {});
        },
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: hasText
                ? IconButton(
                    onPressed: () {
                      controller.clear();
                      BlocProvider.of<QuoteCubit>(context)
                          .filterSearchResults(controller.text);
                      setState(() {});
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
