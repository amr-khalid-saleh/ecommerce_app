import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/ecommerce_app/auth/sign_up/presentation/views/widgets/sign_up_options_item.dart';

class SignUpButtonsOptions extends StatelessWidget {
  const SignUpButtonsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 48.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(0xff4E0189),
          ),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Row(
          children: [
            Expanded(
              child: Container(height: 0.5.h, color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.w),
              child: Text(
                'Or With',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff999EA1),
                ),
              ),
            ),
            Expanded(
              child: Container(height: 0.5.h, color: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 22.h),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SignUpOptionsItem(
              text: 'GitHub',
              imagePath: 'assets/images/github_icon.png',
            ),
            SizedBox(width: 12.w),
            SignUpOptionsItem(
              text: 'GitLab',
              imagePath: 'assets/images/gitlab_icon.png',
            ),
          ],
        ),
      ],
    );
  }
}
