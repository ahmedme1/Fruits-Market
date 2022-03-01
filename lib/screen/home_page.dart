import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/auth/presentation/pages/complete_information_page/component.dart';
import 'package:fruit_market/core/constant.dart';
import 'package:fruit_market/screen/all_product.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Fruits Market',
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
        actions: [
          Stack(
            children: [
              IconButton(
                  onPressed: ()
                  {
                    Get.to(()=> Cart(),transition: Transition.leftToRight,duration: Duration(milliseconds: 900));
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )),
              Positioned(
                bottom: 10,
                left: 25,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green.shade600,
                   child: Text('$_count',style: TextStyle(fontSize: 15,color: Colors.white),),

                ),
              ),
            ],
          )
        ],
        backgroundColor: kMainColor,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            color: kMainColor,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 10,
                  right: 10,
                  child: Card(
                    shape: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(12)),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              setState(() {
                                _count++;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: kMainColor,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 60,
                                width: double.infinity,
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          PaddingForSized(
            icon: Icons.arrow_forward_ios,
            onPressed: ()
            {
              // Get.to(()=> AllProduct(),transition: Transition.leftToRight,duration: Duration(milliseconds: 900));
            },
            text: ' Featured Products',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                image: AssetImage('assets/images/8.png'),
                price: r'18$',
                onTap: ()
                {

                  setState(() {
                  _count++;
                  });
                },
              ),
              CustomContainer(
                image: AssetImage('assets/images/9.png'),
                price: r'25$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
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
                price: r'50$',
                onTap: ()
                {
                  setState(() {
                   _count++;
                  });
                },
              ),
              CustomContainer(
                image: AssetImage('assets/images/11.png'),
                price: r'33$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
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
                price: r'24$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
              ),
              CustomContainer(
                image: AssetImage('assets/images/13.png'),
                price: r'28$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
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
                price: r'21$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
              ),
              CustomContainer(
                image: AssetImage('assets/images/15.png'),
                price: '20'r'$',
                onTap: ()
                {

                  setState(() {
                    _count++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
