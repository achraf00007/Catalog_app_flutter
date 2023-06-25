import 'package:catalog_app/Pages/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        drawer: const MyDrawer(),
        body: const Center(
          child: Text(
            "ENSET DWM",
            style: TextStyle(
                fontSize: 33,
                color: Colors.deepOrangeAccent,
                fontWeight: FontWeight.w600),
          ),
        ));
  }
}
