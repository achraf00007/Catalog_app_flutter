import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  String title;
  Icon itemIcon;
  Function onTap;
  MyDrawerItem({
    Key? key,
    required this.title,
    required this.itemIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: const Icon(
        Icons.arrow_right,
        size: 30,
      ),
      onTap: () => onTap(),
      title: Text(
        title,
        style: const TextStyle(fontSize: 22, color: Colors.teal),
      ),
    );
  }
}
