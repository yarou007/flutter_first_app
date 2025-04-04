import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery here"),
      ),
      body: Center(
        child: Text(
          "Gallery page",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
