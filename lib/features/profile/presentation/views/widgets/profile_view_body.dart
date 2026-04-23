import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/features/profile/presentation/views/widgets/profile_info_section.dart';
import 'package:profile_project/features/profile/presentation/views/widgets/profile_options_section.dart';

import 'app_bar_section.dart';



class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16.h),
          AppBarSection(),
          SizedBox(height: 32.h),
          ProfileInfoSection(),
          SizedBox(height: 52.h),
          ProfileOptionsSection(),
        ],
      ),
    );
  }
}
