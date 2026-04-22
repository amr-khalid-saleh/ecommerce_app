import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenericTextField extends StatelessWidget {
  final String hintText;
  final bool? isObscureText;
  final Widget? prefixWidget;
  final Widget? suffixIcon;

  const GenericTextField({
    super.key,
    required this.hintText,
    this.isObscureText,
    this.prefixWidget,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffC6C6C6), width: 1.3),
          borderRadius: BorderRadius.circular(10.r),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xff9E9E9E),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixWidget,
        constraints: BoxConstraints(maxHeight: 43.h),
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
