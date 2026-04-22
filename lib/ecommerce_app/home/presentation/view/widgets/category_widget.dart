import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../category/presentation/views/category_view.dart';

class CategoryWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final int categoryId;

  const CategoryWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0.w),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  CategoryView(categoryName: title, categoryId: categoryId),
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 68.w,
              height: 68.h,
              child: CircleAvatar(
                radius: 200,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            SizedBox(height: 12.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
