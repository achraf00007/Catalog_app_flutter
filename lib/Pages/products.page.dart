import 'dart:convert';

import 'package:catalog_app/Pages/product.item.dart';
import 'package:catalog_app/Pages/products.details.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://192.168.0.199:9000/Products")).then((response) {
      setState(() {
        products = json.decode(response.body);
      });
    }).catchError((err) {
      print("*****************  Start Error  ******************");
      print(err);
      print("*****************  End Error  ******************");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
            details: false,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
