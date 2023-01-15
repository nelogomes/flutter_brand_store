import 'package:flutter/material.dart';
import 'package:flutter_brand_store/models/product.dart';
import 'package:flutter_brand_store/resources/app_data.dart';
import 'package:flutter_brand_store/views/widgets/product_cart.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 25, right: 30),
        child: MasonryGridView.builder(
          physics: const BouncingScrollPhysics(), // remove scrolling glow
          mainAxisSpacing: 15,
          crossAxisSpacing: 20,
          itemCount: AppData.products.length,
          itemBuilder: (context, index) {
            Product product = AppData.products[index];
            return GestureDetector(
              onTap: () {},
              child: Container(
                color: Colors.transparent,
                child: ProductCart(
                  product: product,
                  index: index,
                ),
              ),
            );
          },
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
    );
  }
}
