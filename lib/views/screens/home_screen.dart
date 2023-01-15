import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/resources/app_icons.dart';
import 'package:flutter_brand_store/views/widgets/category_list.dart';
import 'package:flutter_brand_store/views/widgets/product_list.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    PreferredSizeWidget appBar(BuildContext context) {
      return AppBar(
        leading: Container(
          padding: const EdgeInsets.only(left: 30),
          alignment: Alignment.center,
          width: 50,
          height: 50,
          color: Colors.transparent,
          child: SvgPicture.asset(AppIcons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SvgPicture.asset(
              AppIcons.profile,
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: appBar(context),
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 0, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Explore',
                  style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Best trendy collection!',
                  style: TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 18,
                  ),
                ),
                CategoryList(),
                ProductList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColors.primary,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: index.value,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Home.svg',
              color: AppColors.primary,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Search.svg'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Cart.svg'),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/Settings.svg'),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
