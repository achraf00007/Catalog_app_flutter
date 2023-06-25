import 'package:catalog_app/Pages/products.details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  const ProductItem({Key? key, required this.product, required this.details})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${product["name"]}"),
                          Text("${product["price"]} MAD"),
                          if (product["promotion"] == true)
                            const Icon(
                              Icons.heart_broken,
                              color: Colors.red,
                            ),
                          Row(
                            children: [
                              for (int i = 0; i < product['stars']; i++)
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsDetails(
                                  productId: product['id'],
                                )));
                  },
                  child: Image(
                    width: 170,
                    image: AssetImage(
                      "${product['image']}",
                    ),
                  ),
                )
              ],
            ),
          ),
          if (details == true)
            Card(
              child: Text("${product["description"]}"),
            )
        ],
      ),
    ));
  }
}
