import 'package:flutter/material.dart';
import 'package:flutter_app/Core/SizeBox.dart';
import 'package:flutter_app/Core/Text_Fonts.dart';
import 'package:flutter_app/UI/Home_Screen/FlutterPlugins_Screen/Plugins_Screen.dart';
import 'package:flutter_app/UI/Home_Screen/Material_Screen/Material_Screen.dart';
import 'package:flutter_app/UI/Home_Screen/Styles_Screen/Styles_Screen.dart';
import 'package:flutter_app/UI/Home_Screen/Tutorials_Screen/Tutorials_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/AppColor.dart';
import '../../Core/ImagePath.dart';

class AppDrawer extends StatefulWidget {
   const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(45.r)),
            image: DecorationImage(
              image: AssetImage(
                Images.backGround,
              ),
              fit: BoxFit.cover,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.witheColor,
                          size: 25.sp,
                        ),
                      ),
                      Text(
                        'Settings',
                        style: TextFonts.topText,
                      ),
                      fixwidth10
                    ],
                  ),
                  fixheight30,
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return MaterialScreen();
                      }));
                    },
                    child: ListTile(
                      title: Text('Material Screen',
                        style: TextFonts.commonwitheText,
                       ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.witheColor,),
                    ),
                  ),
                  Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return const StylesScreen();
                      }));
                    },
                    child: ListTile(
                      title: Text('Styles & Other Screen',
                        style: TextFonts.commonwitheText,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.witheColor,),
                    ),
                  ),
                  Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return const Plugins_Screen();
                      }));
                    },
                    child: ListTile(
                      title: Text('Flutter Plugins',
                          style: TextFonts.commonwitheText,
                        ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.witheColor,),
                    ),
                  ),
                  Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                        return TutorialScreen();
                      }));
                    },
                    child: ListTile(
                      title: Text('Tutorials Screen',
                        style: TextFonts.commonwitheText,
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.witheColor,),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 15.w, bottom: 20.h),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  child: Row(
                    children: [
                    Icon(Icons.info_rounded,size: 20.sp,color: AppColors.witheColor,),
                      fixwidth25,
                      Text('About Learn with Flutter',
                        style: TextFonts.commonwitheText,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
            Padding(
              padding:EdgeInsets.only(top: 20.h, left: 20.w, right: 15.w, bottom: 20.h),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.message,size: 20.sp,color: AppColors.witheColor,),
                      fixwidth25,
                       Text('Send Feedback',  style: TextFonts.commonwitheText,)
                    ],
                  ),
                ),
              ),
            ),
            Divider(height: 5.h,thickness: 1.0,color: AppColors.blackColor,),
          ],
        ),
      ),
    );
  }
}
