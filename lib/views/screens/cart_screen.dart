import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset('assets/icons/Back.svg'),
        title: const Text('Cart'),
      ),
      body: const SafeArea(
        child: Center(child: Text('cart')),
      ),
    );
  }
}
