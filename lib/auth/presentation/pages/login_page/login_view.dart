import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/auth/presentation/pages/complete_information_page/complete_info.dart';
import 'package:fruit_market/core/constant.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Image.asset('assets/images/5.png'),
          SizedBox(height: 10,),
          Text('Fruits Markets ',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: kMainColor),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: ()
                {
                  Get.to(()=> CompleteInfo(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 900) );
                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),

                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/6.png',height: 30,width: 30,),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Login With',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Get.to(()=> CompleteInfo(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 900) );

                },
                child: Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey
                    )
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/images/7.png',height: 40,width: 40,),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Login With',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
