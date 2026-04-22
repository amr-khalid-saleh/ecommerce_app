import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileIconWidget extends StatelessWidget {
  const ProfileIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0.h),
      child: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Color(0xff4a71ff)),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.person_rounded, color: Colors.grey, size: 70),
      ),
    );
  }
}
