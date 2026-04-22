import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/simple_profile/presentation/views/widgets/simple_profile_view_body.dart';

class SimpleProfileView extends StatelessWidget {
  const SimpleProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4a71ff),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: 20.w,
            vertical: 16.h,
          ),
          child: SimpleProfileViewBody(),
        ),
      ),
    );
  }
}
