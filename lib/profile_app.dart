import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/bottom_nav_bar.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/details_view.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/home_view.dart';

import 'ecommerce_app/auth/login/presentation/views/login_view.dart';



class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white
        ),
        home: LoginView(),
      ),
    );
  }
}
