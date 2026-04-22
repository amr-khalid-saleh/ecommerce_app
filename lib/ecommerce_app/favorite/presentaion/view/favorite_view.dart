import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_project/ecommerce_app/home/presentation/view/widgets/custom_card_widget.dart';

class FavoriteView extends StatelessWidget {
  final List<Map<String, dynamic>> products = const [
    {
      'image': 'assets/images/offer_picture.png',
      'title': 'Offer',
      'price': 100,
    },
    {
      'image': 'assets/images/offer_picture.png',
      'title': 'Offer',
      'price': 100,
    },
    {
      'image': 'assets/images/offer_picture.png',
      'title': 'Offer',
      'price': 100,
    },
    {
      'image': 'assets/images/offer_picture.png',
      'title': 'Offer',
      'price': 100,
    },
    {
      'image': 'assets/images/offer_picture.png',
      'title': 'Offer',
      'price': 100,
    },
  ];

  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Favorite',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 20.0.h,left: 16.0.w,right: 16.0.w),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio:1.05,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return CustomCardWidget(
                products: products[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
