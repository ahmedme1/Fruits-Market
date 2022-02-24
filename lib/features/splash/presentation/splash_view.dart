import 'package:flutter/material.dart';
import 'package:fruit_market/core/constant.dart';
import 'package:fruit_market/features/splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),

    );
  }
}
