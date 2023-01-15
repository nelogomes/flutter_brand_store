enum ProductSize { s, m, l, xl, xxl }

class Product {
  String name;
  String image;
  double price;
  bool isAddedCart;
  List<ProductSize> productSize;

  Product(
      this.name, this.image, this.price, this.isAddedCart, this.productSize);
}
