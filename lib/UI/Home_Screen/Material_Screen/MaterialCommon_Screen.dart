import 'package:flutter/material.dart';
import 'package:flutter_app/UI/Home_Screen/Material_Screen/code_sxreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';

class Common_Screen extends StatelessWidget {
   String title;
  Widget widgetData ;
   Common_Screen(
      {Key? key, required this.title,required this.widgetData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Images.backGround,
              ),
              fit: BoxFit.cover,
            )),
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fixheight40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.witheColor,
                    ),
                  ),
                  Text(
                    "$title Widget",
                    style: TextStyle(
                        color: AppColors.witheColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (ctx) {
                        return  const Code_Screen();
                      }));
                    },
                    child: const Icon(
                      Icons.code_off,
                      color: AppColors.witheColor,
                    ),
                  )
                ],
              ),
              fixheight30,
              Container(
                height: 500.h,
                decoration: BoxDecoration(
                    color: AppColors.witheColor,
                    borderRadius: BorderRadius.circular(30.r)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.asset(
                        Images.mobail,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: 35.h, bottom: 35.h, left: 20.w, right: 20.w),
                          child:Center(
                            child: widgetData,
                          )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
