import 'package:catalog_app/Pages/widgets/drawer.header.dart';
import 'package:catalog_app/Pages/widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),
          MyDrawerItem(
              title: "Home",
              itemIcon: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          MyDrawerItem(
              title: "Products",
              itemIcon: const Icon(Icons.abc_outlined),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/products");
              }),
        ],
      ),
    );
  }
}
