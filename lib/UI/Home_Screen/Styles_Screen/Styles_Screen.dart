import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';

class StylesScreen extends StatelessWidget {
  const StylesScreen({Key? key}) : super(key: key);

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
            children: [
              fixheight40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                    child: const Icon(Icons.arrow_back_ios_new,
                      color: AppColors.witheColor,),
                  ),
                  Text('Styles & Other',
                      style: TextFonts.topText
                    ),
                  fixwidth10,
                ],
              ),
              fixheight20,
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        decoration: BoxDecoration(
                            color: AppColors.witheColor,
                            borderRadius: BorderRadius.circular(5.r)
                        ),
                        child:  ListTile(
                          leading: Image.asset(
                            Images.home4,
                            height: 30.h,
                            width: 32.w,
                            fit: BoxFit.cover,
                          ),
                          title: Text('App Bar', style: TextFonts.commonblackText,),
                          subtitle: const Text('Yesterday, 10:20 PM'),
                          // contentPadding: EdgeInsets.all(10.sp),
                          // dense: true,
                        ),
                      );
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
