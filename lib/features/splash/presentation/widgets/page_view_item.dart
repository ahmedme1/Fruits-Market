import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/space_widget.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:lottie/lottie.dart';

class PageViewItem extends StatelessWidget {
   PageViewItem({Key? key, this.title, this.subtitle, this.image}) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? image;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(10),
        // Image.asset(image!,height: 250),
        Lottie.asset(image!,height: 300),
        const VerticalSpace(3),
        Text(title!,style: TextStyle(fontSize: 20),),
        const VerticalSpace(1),
        Text(subtitle!,style: TextStyle(fontSize: 20),),


      ],
    );
  }
}
