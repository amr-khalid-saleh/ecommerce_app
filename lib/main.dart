import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/profile_app.dart';

void main()async{
  await ScreenUtil.ensureScreenSize();
  runApp(ProfileApp());
}

