import 'package:flutter/material.dart';
import 'package:profile_project/features/add_product/presentation/views/add_product_view.dart';
import 'package:profile_project/features/favorite/presentaion/view/favorite_view.dart';
import 'package:profile_project/features/home/presentation/view/home_view.dart';
import 'package:profile_project/features/profile/presentation/views/profile_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const Center(child: Text('Search view')),
    const FavoriteView(),
    const ProfileView(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductView()),
          );
        },
        backgroundColor: Color(0xff6055D8),
        child: Icon(Icons.add_rounded, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF8F7F7),
        currentIndex: _currentIndex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_rounded),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ''),
        ],
        selectedIconTheme: IconThemeData(color: Color(0xff6055D8), size: 36),
        unselectedIconTheme: IconThemeData(color: Color(0xff9E9E9E), size: 30),
      ),
    );
  }
}
