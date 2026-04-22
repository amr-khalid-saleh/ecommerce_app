import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoSection extends StatelessWidget {
  const ProfileInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            SizedBox(
              width: 81.w,
              height: 81.h,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/me_with_bmw.jpg'),
              ),
            ),
            Container(
              width: 25.w,
              height: 25.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
                size: 18,
              ),
            ),
          ],
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amr Saleh',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'amr123@gmail.com',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: 98.w,
              height: 28.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff3592E7),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
