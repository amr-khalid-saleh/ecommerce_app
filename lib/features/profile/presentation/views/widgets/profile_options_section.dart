import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/features/profile/presentation/views/widgets/profile_option_item.dart';

class ProfileOptionsSection extends StatelessWidget {
  const ProfileOptionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionItem(
          icon: Icons.favorite_border_outlined,
          text: 'Favourites',
        ),
        ProfileOptionItem(icon: Icons.download, text: 'Downloads'),
        _buildDivider(),
        ProfileOptionItem(icon: Icons.public_rounded, text: 'Languages'),
        ProfileOptionItem(icon: Icons.location_on_outlined, text: 'Location'),
        ProfileOptionItem(
          icon: Icons.subscriptions_outlined,
          text: 'Subscription',
        ),
        ProfileOptionItem(icon: Icons.desktop_mac_rounded, text: 'Display'),
        _buildDivider(),
        ProfileOptionItem(
          icon: Icons.delete_outline_rounded,
          text: 'Clear Cash',
        ),
        ProfileOptionItem(
          icon: Icons.access_time_outlined,
          text: 'Clear History',
        ),
        ProfileOptionItem(icon: Icons.logout_rounded, text: 'Log Out'),
        _buildDivider(),
      ],
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Divider(height: 3, color: Colors.black, indent: 28, endIndent: 28),
    );
  }
}
