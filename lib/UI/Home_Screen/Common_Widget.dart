import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/AppColor.dart';
import '../../Core/SizeBox.dart';
import '../../Core/Text_Fonts.dart';

class CommonWidget extends StatelessWidget {
  final image;
  final icon;
  final String title;
  final  onPressed;
  const CommonWidget(
      {Key? key,
        required  this.image,
        required this.icon,
      required this.title,
       required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 65.h,
        decoration: BoxDecoration(
          color: AppColors.witheColor,
          borderRadius: BorderRadius.circular(5.r)
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10.w,right: 10.w),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 30.h,
                width: 32.w,
                fit: BoxFit.cover,
              ),
              fixwidth20,
              Text(title, style: TextFonts.commonblackText),
              const Spacer(),
              Icon(icon)
            ],
          ),
        ),
      ),
    );
  }
}
