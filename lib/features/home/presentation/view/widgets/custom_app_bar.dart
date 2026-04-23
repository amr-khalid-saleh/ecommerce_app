import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 48.w,
          height: 48.h,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/me_with_bmw.jpg'),
          ),
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
            ),
            Text(
              'Amr Saleh',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            color: Color(0xffF8F7F7),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.notifications, size: 20, color: Color(0xff7C7979)),
        ),
      ],
    );
  }
}
