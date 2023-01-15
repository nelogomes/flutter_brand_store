import 'package:flutter_brand_store/models/category.dart';
import 'package:flutter_brand_store/models/product.dart';

class AppData {
  const AppData._();

  static List<BrandCategory> categories = [
    BrandCategory(BrandType.all, true),
    BrandCategory(BrandType.men, false),
    BrandCategory(BrandType.women, false),
    BrandCategory(BrandType.kids, false),
    BrandCategory(BrandType.other, false),
    BrandCategory(BrandType.other, false),
    BrandCategory(BrandType.other, false),
    BrandCategory(BrandType.other, false),
    BrandCategory(BrandType.other, false),
    BrandCategory(BrandType.other, false),
  ];

  static List<Product> products = [
    Product('Tagerine Shirt', 'assets/images/1.png', 240.32, false),
    Product('Leather Coart', 'assets/images/2.png', 325.36, false),
    Product('Tagerine Shirt', 'assets/images/3.png', 126.47, false),
    Product('Leather Coart', 'assets/images/4.png', 257.85, false),
    Product('Tagerine Shirt', 'assets/images/1.png', 240.32, false),
    Product('Tagerine Shirt', 'assets/images/3.png', 126.47, false),
    Product('Leather Coart', 'assets/images/4.png', 257.85, false),
    Product('Leather Coart', 'assets/images/2.png', 325.36, false),
  ];
}
