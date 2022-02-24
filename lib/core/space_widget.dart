

import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class HorizantalSpace extends StatelessWidget {
  const HorizantalSpace({Key? key, this.value}) : super(key: key);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
