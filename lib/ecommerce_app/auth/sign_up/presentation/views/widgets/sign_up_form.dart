import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/ecommerce_app/auth/sign_up/presentation/views/widgets/text_field_section.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscureText = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldSection(
          labelText: 'Email Address',
          hintText: 'Enter your email address',
        ),
        SizedBox(height: 8.h),
        TextFieldSection(
          labelText: 'Phone Number',
          hintText: 'Enter your phone number',
          prefixWidget: Container(
            margin: EdgeInsets.only(right: 12.w, left: 16.w),
            padding: EdgeInsets.only(right: 12.w),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.blueGrey.shade100, width: 1.4),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '+20',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 8.h),
        TextFieldSection(
          labelText: 'Password',
          hintText: 'Enter your password',
          isObscureText: isObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child: Icon(
              isObscureText
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
            ),
          ),
        ),
        SizedBox(height: 18.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Container(
                    width: 22,
                    height: 22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: Color(0xffCDD1E0), width: 1.3),
                    ),
                    child: isChecked
                        ? Icon(Icons.check, color: Colors.black, size: 18)
                        : null,
                  ),
                ),
                SizedBox(width: 6.w),
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Text(
              'Forgot Password?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
