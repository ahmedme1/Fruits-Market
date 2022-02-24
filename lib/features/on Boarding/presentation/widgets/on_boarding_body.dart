import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constant.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruit_market/features/splash/presentation/widgets/custom_page_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../../auth/presentation/pages/login_page/login_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
      setState(() {

      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 15,
          left: SizeConfig.defaultSize! *10,
          right: SizeConfig.defaultSize! *10,

          child: CustomIndicator(
            dotsIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients ? (pageController?.page == 2 ? false : true) : true,
          child: Positioned(
              top: SizeConfig.defaultSize! * 7,
              right: 32,
              child: GestureDetector(
                onTap: ()
                {
                  Get.to(()=> LoginView(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 900));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              )),
        ),
        Positioned(
            left: SizeConfig.defaultSize! *10,
            right: SizeConfig.defaultSize! *10,

            bottom: SizeConfig.defaultSize! * 5,
            child: CustomGeneralButton(
              onTap: ()
              {
                if(pageController!.page! < 2 )
                {
                  pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                } else
                {
                  Get.to(()=> LoginView(),transition: Transition.rightToLeft, duration: Duration(milliseconds: 900) );
                }
              },
              text: pageController!.hasClients ? (pageController?.page == 2 ? 'Get Started' : 'Next') : 'Next' ,
            )),
      ],
    );
  }
}
