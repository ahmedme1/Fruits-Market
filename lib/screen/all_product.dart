import 'package:flutter/material.dart';
import 'package:fruit_market/auth/presentation/pages/complete_information_page/component.dart';
import 'package:fruit_market/core/constant.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'All Product',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: kMainColor,
        elevation: 0,
      ),
      body:  ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                image: AssetImage('assets/images/8.png'),
              ),
              CustomContainer(
                image: AssetImage('assets/images/9.png'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                image: AssetImage('assets/images/10.png'),
              ),
              CustomContainer(
                image: AssetImage('assets/images/11.png'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                image: AssetImage('assets/images/12.png'),
              ),
              CustomContainer(
                image: AssetImage('assets/images/13.png'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                image: AssetImage('assets/images/14.png'),
              ),
              CustomContainer(
                image: AssetImage('assets/images/15.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
