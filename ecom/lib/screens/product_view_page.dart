
import 'package:ecom/config/images_constants.dart';

import 'package:flutter/material.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key});

  @override
  State<ProductViewPage> createState() => _ProductViewPageState();
}

class _ProductViewPageState extends State<ProductViewPage> {
  List<String> images = [kProductImage1, kProductImage2, kProductImage3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
    );
  }
}
