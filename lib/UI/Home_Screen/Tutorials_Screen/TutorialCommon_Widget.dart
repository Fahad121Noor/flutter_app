import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Core/AppColor.dart';
import '../../../Core/Text_Fonts.dart';

class TutorialCommon_Widget extends StatelessWidget {
  final String title;
  final  onPressed;
  final String image;
   TutorialCommon_Widget({Key? key,
     required this.image,
     required this.title,
     required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.h,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image
              ),
              fit: BoxFit.cover,
            )),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: onPressed,
            child: Container(
              height: 40.h,
              width: 330.w,
              decoration: BoxDecoration(
                  color: AppColors.witheColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5.r),
                      bottomRight: Radius.circular(5.r))),
              child:  Center(
                child: Text(
                  title,
                  style: TextFonts.commonblackText,
                ),
              ),
            ),
          ),
        ),

    );
  }
}
