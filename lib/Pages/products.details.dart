import 'dart:convert';

import 'package:catalog_app/Pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsDetails extends StatefulWidget {
  final int productId;
  const ProductsDetails({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic product;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http
        .get(
            Uri.parse("http://192.168.0.199:9000/Products/${widget.productId}"))
        .then((response) {
      setState(() {
        product = json.decode(response.body);
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
        title: Text("Products details"),
      ),
      body: Center(
        child: ProductItem(
          product: product,
          details: true,
        ),
      ),
    );
  }
}
