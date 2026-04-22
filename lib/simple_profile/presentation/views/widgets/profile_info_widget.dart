import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/simple_profile/presentation/views/widgets/profile_icon_widget.dart';
import 'package:profile_project/simple_profile/presentation/views/widgets/profile_info_item_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Color(0xffc9c9c9),
      ),
      child: Column(
        children: [
          ProfileIconWidget(),
          ProfileInfoItemWidget(
            icon: Icons.person_rounded,
            title: 'Name',
            subTitle: 'Amr Saleh',
          ),
          ProfileInfoItemWidget(
            icon: Icons.shopping_bag_rounded,
            title: 'Job Title',
            subTitle: 'Flutter Developer',
          ),
          ProfileInfoItemWidget(icon: Icons.cake, title: 'Age', subTitle: '22'),
          ProfileInfoItemWidget(
            icon: Icons.location_on,
            title: 'Address',
            subTitle: 'Egypt, Cairo',
          ),
          ProfileInfoItemWidget(
            icon: Icons.school,
            title: 'Gradated',
            subTitle: 'No',
          ),
          ProfileInfoItemWidget(
            icon: Icons.email,
            title: 'Email',
            subTitle: 'amr123@gmail.com',
          ),
          ProfileInfoItemWidget(
            icon: Icons.phone,
            title: 'Phone Number',
            subTitle: '+20123456789',
          ),
          Row(
            children: [
              ProfileInfoItemWidget(
                icon: Icons.link,
                title: 'Linkedin',
                subTitle: 'amr-saleh',
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Text('open', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
