import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileOptionItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileOptionItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 14.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black, size: 24),
          Spacer(flex: 1),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(flex: 3),
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.black, size: 16),
        ],
      ),
    );
  }
}
