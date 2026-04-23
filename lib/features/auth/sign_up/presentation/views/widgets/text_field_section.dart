import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'generic_text_feild.dart';

class TextFieldSection extends StatelessWidget {
  final String labelText;
  final String hintText;
  final bool? isObscureText;
  final Widget? prefixWidget;
  final Widget? suffixIcon;
  final InputBorder? enableBorder;

  const TextFieldSection({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isObscureText,
    this.prefixWidget,
    this.suffixIcon,
    this.enableBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff4E0189),
          ),
        ),
        SizedBox(height: 6.h),
        GenericTextField(
          hintText: hintText,
          isObscureText: isObscureText,
          prefixWidget: prefixWidget,
          suffixIcon: suffixIcon,
        ),
      ],
    );
  }
}
