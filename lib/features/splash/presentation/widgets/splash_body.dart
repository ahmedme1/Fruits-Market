

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/on%20Boarding/presentation/on_boarding_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';



class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(milliseconds: 600));
    fadingAnimation = Tween<double>(begin: .2, end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);
    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children:  [
          Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 51,
                fontFamily: 'Poppins',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Image.asset('assets/images/1.png'),
        ],
      ),
    );

  }

}
void goToNextView(){
  Future.delayed(Duration(seconds: 3),()
  {
    Get.to(()=>OnBoardingView(),transition: Transition.fade);

  });
}
