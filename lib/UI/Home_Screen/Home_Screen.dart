import 'package:flutter/material.dart';
import 'package:flutter_app/UI/Home_Screen/FlutterPlugins_Screen/Plugins_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/AppColor.dart';
import '../../Core/ImagePath.dart';
import '../../Core/SizeBox.dart';
import '../../Core/Text_Fonts.dart';
import '../AppDrawer/AppDrawer.dart';
import 'Common_Widget.dart';
import 'Material_Screen/Material_Screen.dart';
import 'Styles_Screen/Styles_Screen.dart';
import 'Tutorials_Screen/Tutorials_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKEy,
        drawer:  const AppDrawer(),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                fixheight40,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                           _scaffoldKEy.currentState?.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: AppColors.witheColor,
                          size: 30.sp,
                        )),
                    Text(
                      'Learn With Flutter',
                      style: TextFonts.topText,
                    ),
                    fixwidth10
                  ],
                ),
                fixheight40,
                Stack(
                  children: [
                    Image.asset(
                      Images.home1,
                      height: 160.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 120.h,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                            return TutorialScreen();
                          }));
                        },
                        child: Container(
                          height: 40.h,
                          width: 330.w,
                          decoration: BoxDecoration(
                              color: AppColors.witheColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5.r),
                                  bottomRight: Radius.circular(5.r))),
                          child: Center(
                            child: Text(
                              'Tutorials',
                              style: TextFonts.commonblackText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                fixheight20,
                Text(
                  'Categories',
                  style: TextFonts.commonwitheText,
                ),
                fixheight20,
                CommonWidget(
                  image: Images.home2,
                  title: 'Material',
                  icon: Icons.arrow_forward_ios_outlined,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                      return MaterialScreen();
                    }));
                  },
                ),
                fixheight15,
                CommonWidget(
                  image: Images.home4,
                  title: 'Styles & Other',
                  icon: Icons.arrow_forward_ios_outlined,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                      return const StylesScreen();
                    }));
                  },
                ),
                fixheight15,
                CommonWidget(
                  image: Images.home4,
                  title: 'Flutter plugins',
                  icon: Icons.arrow_forward_ios_outlined,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                      return const Plugins_Screen();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
