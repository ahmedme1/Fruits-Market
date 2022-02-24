import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/splash/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
    controller: pageController,
      children: [
        PageViewItem(
          title: 'E Shopping ',
          subtitle: ' Explore top organic fruits & grab them',
          image: 'assets/json_animate/page1.json',
        ),
        PageViewItem(
          title: ' Delivery on the way ',
          subtitle: 'Get your order by speed delivery',
          image: 'assets/json_animate/page2.json',
        ),
        PageViewItem(
          title: 'Delivery Arrived ',
          subtitle: ' Order is arrived all your place ',
          image: 'assets/json_animate/page3.json',
        ),
      ],
    );
  }
}
