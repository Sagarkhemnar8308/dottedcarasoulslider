
import 'package:dottedcarasoulslider/dotted_carasoul_slider_multiple_images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: DottedCarasoulSlidermultipleImages(
        addDots: true,
        autoplay: true,
        reverse: false,
        dotActiveColor: Colors.red,
        dotInActiveColor: Colors.yellow,
        imgUrls: const [
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D",
          "https://images.unsplash.com/photo-1708200216317-84160f5e8db0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D"
        ],
        duration: const Duration(seconds: 3),
        height: 100,
        width: MediaQuery.of(context).size.width,
      )),
    );
  }
}
