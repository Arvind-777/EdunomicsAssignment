import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_containers_grid/image_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: 80,
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              ImgContainer5Block(
                img1: "assets/test_image.png", img2: "assets/test_image.png",
                img3: "assets/test_image.png",img4: "assets/test_image.png",
                img5: "assets/test_image.png",
              ),
              SizedBox(height: 30,)
            ],
          )
      ),
    );
  }
}
