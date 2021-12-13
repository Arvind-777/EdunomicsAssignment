import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImgContainer extends StatelessWidget {
  const ImgContainer({Key? key, this.img}) : super(key: key);
  final img;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        // clipBehavior: Clip.antiAlias,
        height: 60*sqrt(2),
        width: 60*sqrt(2),
        child: Image.asset(img,fit: BoxFit.cover,),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    double r = (size.height/2)*0.95;
    double theta = 15 * pi/180;
    double l = size.height;
    double rCurve = r/2;

    Path path = Path()
      ..moveTo(l/2-r*sin(theta), l/2-r*cos(theta))
      ..arcToPoint(Offset(l/2+r*sin(theta),l/2-r*cos(theta)),radius: Radius.circular(rCurve),clockwise: true)
      ..lineTo(l/2+r*cos(theta), l/2-r*sin(theta))
      ..arcToPoint(Offset(l/2+r*cos(theta),l/2+r*sin(theta)),radius: Radius.circular(rCurve),clockwise: true)
      ..lineTo(l/2+r*sin(theta), l/2+r*cos(theta))
      ..arcToPoint(Offset(l/2-r*sin(theta),l/2+r*cos(theta)),radius: Radius.circular(rCurve),clockwise: true)
      ..lineTo(l/2-r*cos(theta), l/2+r*sin(theta))
      ..arcToPoint(Offset(l/2-r*cos(theta),l/2-r*sin(theta)),radius: Radius.circular(rCurve),clockwise: true)
      ..close()
    ;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class ImgContainer3Row extends StatelessWidget {
  const ImgContainer3Row({Key? key, this.img1,this.img2,this.img3}) : super(key: key);
  final img1;
  final img2;
  final img3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImgContainer(img: img1,),SizedBox(width: 20,),ImgContainer(img: img2,),SizedBox(width: 20,),ImgContainer(img: img3,)
      ],
    );
  }
}

class ImgContainer2Row extends StatelessWidget {
  const ImgContainer2Row({Key? key, this.img1, this.img2}) : super(key: key);
  final img1;
  final img2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImgContainer(img: img1,),SizedBox(width: 20,),ImgContainer(img: img2,)
      ],
    );
  }
}

class ImgContainer5Block extends StatelessWidget {
  const ImgContainer5Block({Key? key, this.img1,this.img2,this.img3,this.img4,this.img5}) : super(key: key);
  final img1;
  final img2;
  final img3;
  final img4;
  final img5;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImgContainer3Row(img1: img1,img2: img2,img3: img3,),
        ImgContainer2Row(img1: img4,img2: img5,)
      ],
    );
  }
}