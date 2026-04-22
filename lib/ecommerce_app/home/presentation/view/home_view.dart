import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/widgets/category_widget.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/widgets/custom_product_widget.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/widgets/custom_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<dynamic> categories = [];
  List<dynamic> generalProducts = [];

  @override
  void initState() {
    super.initState();
    getCategories();
    getGeneralProducts();
  }

  Future<void> getCategories() async {
    final Dio dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/categories',
    );
    final List<dynamic> data = response.data;
    setState(() {
      categories = data;
    });
  }

  Future<void> getGeneralProducts() async {
    final Dio dio = Dio();
    final response = await dio.get('https://api.escuelajs.co/api/v1/products');
    final List<dynamic> data = response.data;
    log(data.toString());
    setState(() {
      generalProducts = data;
    });
    log(generalProducts.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              CustomAppBar(),
              SizedBox(height: 24.h),
              CustomTextField(
                hintText: 'search here',
                prefixWidget: Icon(Icons.search_rounded),
              ),
              SizedBox(height: 24.h),
              Image.asset(
                'assets/images/offer_picture.png',
                width: double.infinity,
                height: 135.h,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10.w,
                    height: 10.h,
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 10.w,
                    height: 10.h,
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Color(0xff6055D8),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 10.w,
                    height: 10.h,
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 10.w,
                    height: 10.h,
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15.h),
              SizedBox(
                height: 105.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryWidget(
                      imageUrl: categories[index]['image'],
                      title: categories[index]['name'],
                      categoryId: categories[index]['id'],
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'General Products',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 15.h),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 126,
                    child: CustomProductWidget(
                      imageUrl: generalProducts[index]['images'][0] ?? '',
                      title: generalProducts[index]['title'] ?? '',
                      description: generalProducts[index]['description'],
                      category:
                          generalProducts[index]['category']['name'] ?? '',
                      price: generalProducts[index]['price'] ?? 0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
