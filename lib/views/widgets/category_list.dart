import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/models/category.dart';
import 'package:flutter_brand_store/resources/app_data.dart';
import 'package:flutter_brand_store/common/app_extensions.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 26, right: 0),
      child: SizedBox(
        height: 32,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: AppData.categories.length,
          itemBuilder: (context, index) {
            if (AppData.categories.isEmpty) {
              return Container(
                child: const Text('empty'),
              );
            }
            BrandCategory category = AppData.categories[index];
            return GestureDetector(
              onTap: () => print(index),
              child: Container(
                width: 54,
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: category.isSelected
                      ? AppColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Text(
                  category.type.name.toCapital,
                  style: TextStyle(
                    color: category.isSelected
                        ? Colors.white
                        : AppColors.primaryText,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(padding: EdgeInsets.only(right: 35));
          },
        ),
      ),
    );
  }
}
