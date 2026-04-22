import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/simple_profile/presentation/views/widgets/profile_info_widget.dart';

class SimpleProfileViewBody extends StatelessWidget {
  const SimpleProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Profile Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 48.h),
        ProfileInfoWidget(),
      ],
    );
  }
}
