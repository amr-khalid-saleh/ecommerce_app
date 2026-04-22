import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../home/presentation/view/widgets/custom_product_widget.dart';

class CategoryView extends StatefulWidget {
  final String categoryName;
  final int categoryId;

  const CategoryView({
    super.key,
    required this.categoryName,
    required this.categoryId,
  });

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    getProducts();
  }

  Future<void> getProducts() async {
    final Dio dio = Dio();
    final response = await dio.get(
      'https://api.escuelajs.co/api/v1/products/?categoryId=${widget.categoryId}',
    );
    final List<dynamic> data = response.data;
    setState(() {
      products = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 48.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          color: Color(0xffd3d0d0),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Spacer(flex: 5),
                    Text(
                      widget.categoryName,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(flex: 7),
                  ],
                ),
                SizedBox(height: 24.h),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 126,
                      child: CustomProductWidget(
                        imageUrl: products[index]['images'][0] ?? '',
                        title: products[index]['title'] ?? '',
                        description: products[index]['description'],
                        category: products[index]['category']['name'] ?? '',
                        price: products[index]['price'] ?? 0,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
