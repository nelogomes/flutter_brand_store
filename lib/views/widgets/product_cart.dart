import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.product, required this.index});

  final Product product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                  width: 150,
                ),
              ),
              Positioned(
                bottom: -18,
                right: 18,
                width: 36,
                height: 36,
                child: GestureDetector(
                  onTap: () => {},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryText,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Bag.svg',
                        width: 10,
                        height: 11,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            '\$${product.price}',
            style: const TextStyle(
              color: AppColors.primaryText,
              fontSize: 18,
            ),
          ),
          Text(
            product.name,
            style: const TextStyle(
              color: AppColors.secondaryText,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
