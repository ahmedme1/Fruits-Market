import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constant.dart';
import 'package:fruit_market/screen/cart.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Product extends StatelessWidget {
  Product({this.images, this.text});
  String? text;
  ImageProvider? images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            image: DecorationImage(image: images!, fit: BoxFit.fill),
          ),
        ),
        Text(text!),
      ],
    );
  }
}

class CustomContainer extends StatefulWidget {
  CustomContainer({Key? key, this.image,this.price,this.onTap}) : super(key: key);
  ImageProvider? image;
  String? price;
  VoidCallback? onTap;

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.white, spreadRadius: 1, blurRadius: 5),
              ],
              image: DecorationImage(
                image: widget.image!,
                fit: BoxFit.contain,
              )),
        ),
        Positioned(
          top: 1,
          left: 100,
            child: GestureDetector(
              onTap: widget.onTap,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: kMainColor,
                child:  Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
        Positioned(
          bottom: 2,
          left: 10,

            child: Text(widget.price!,style: TextStyle(fontSize: 20),)
        ),
      ],
    );
  }
}

class PaddingForSized extends StatelessWidget {
  PaddingForSized({Key? key, this.icon, this.text, @required this.onPressed})
      : super(key: key);
  IconData? icon;
  String? text;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: kMainColor),
          ),
          IconButton(
            icon: Icon(icon!,color: kMainColor,),
            onPressed: onPressed!,
          ),
        ],
      ),
    );
  }
}
