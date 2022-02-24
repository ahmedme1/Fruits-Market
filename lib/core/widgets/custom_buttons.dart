
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';

import '../constant.dart';

class CustomGeneralButton extends StatelessWidget {
   CustomGeneralButton({Key? key, this.text, this.onTap}) : super(key: key);
 final String? text;
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),

        ),
        child: Center(
          child: Text(
           text!,
            style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
