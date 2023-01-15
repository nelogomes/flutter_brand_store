import 'package:flutter/material.dart';
import 'package:flutter_brand_store/common/app_colors.dart';
import 'package:flutter_brand_store/models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final Size screenWidth = MediaQuery.of(context).size;
    final Size screenHeight = MediaQuery.of(context).size;

    List<Widget> buildSizeItem() {
      return product.productSize.map(((e) {
        return Container(
          alignment: Alignment.center,
          width: 45,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            e.toString().split('.')[1],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        );
      })).toList();
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/Back.svg'),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Details',
          style: TextStyle(color: AppColors.primaryText),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 30, right: 30, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  product.image,
                  width: screenWidth.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 209,
              child: const Text(
                'Premium Tagerine Shirt',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Size',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buildSizeItem(),
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${product.price}',
                  style: const TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 162,
                  height: 62,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  child: const Text(
                    'Add To Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
