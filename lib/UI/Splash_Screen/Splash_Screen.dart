import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/Core/AppColor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/ImagePath.dart';
import '../../Core/SizeBox.dart';
import '../../Core/Text_Fonts.dart';
import '../Home_Screen/Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (ctx) =>  const HomeScreen())
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Images.backGround,
              ),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            fixheight40,
            fixheight40,
            fixheight20,
            Expanded(
              child: Text('Welcome',
                style: TextFonts.splashtop,
               ),
            ),
            Image.asset(
              Images.flutterIcon,
              height: 450.h,
              width: 300.w,
              fit: BoxFit.cover,
            ),
            fixheight40,
            fixheight20,
            Text('Powered by Beta Byte Technology',
              style: TextFonts.commonwitheText,
            ),
            fixheight15
          ],
        ),
      ),
    );
  }
}
