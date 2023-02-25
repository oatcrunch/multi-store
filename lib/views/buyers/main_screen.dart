import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_store/views/buyers/nav_screens/account_screen.dart';

import 'nav_screens/cart_screen.dart';
import 'nav_screens/category_screen.dart';
import 'nav_screens/home_screen.dart';
import 'nav_screens/search_screen.dart';
import 'nav_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  // ignore: prefer_final_fields
  List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const StoreScreen(),
    const CartScreen(),
    const SearchScreen(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _pageIndex,
          onTap: (value) {
            setState(() {
              _pageIndex = value;
            });
          },
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.yellow.shade900,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'HOME'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/explore.svg', width: 20),
              label: 'CATEGORIES',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/shop.svg', width: 20),
                label: 'STORE'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/cart.svg'), label: 'CART'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/search.svg'),
                label: 'SEARCH'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/account.svg'),
                label: 'ACCOUNT')
          ]),
      body: _pages[_pageIndex],
    );
  }
}
