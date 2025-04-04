import 'package:flutter/material.dart';

import '../widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home "),
      ),
      body: Center(
          child: Text(
        "WELCOME PAGE",
        style: Theme.of(context).textTheme.displayLarge,
      )),
    );
  }
}
