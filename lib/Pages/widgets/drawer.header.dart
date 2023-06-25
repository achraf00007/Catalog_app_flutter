import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Colors.teal])),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/profile.jpg"),
            radius: 50,
          )
        ],
      ),
    );
  }
}
