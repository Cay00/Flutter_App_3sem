import 'package:flutter/material.dart';
import '../../utils/my_colors.dart';

class BasicTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;

  BasicTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: MyColors.purpleColor),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(70, 0, 0, 0)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.purpleLightColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.purpleLightColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
