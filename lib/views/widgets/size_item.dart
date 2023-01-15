import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/models/product.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SizeItem extends HookWidget {
  const SizeItem({super.key, required this.product});
  final Product product;

  @override
  build(BuildContext context) {
    final selectedSizeIndex = useState(0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: product.productSize.asMap().entries.map((e) {
        return GestureDetector(
          onTap: () {
            selectedSizeIndex.value = e.key;
          },
          child: Container(
            alignment: Alignment.center,
            width: 45,
            height: 44,
            decoration: BoxDecoration(
              color: selectedSizeIndex.value == e.key
                  ? AppColors.secondary
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              e.value.toString().split('.')[1],
              style: TextStyle(
                color: selectedSizeIndex.value == e.key
                    ? Colors.white
                    : AppColors.secondaryText,
                fontSize: 24,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
