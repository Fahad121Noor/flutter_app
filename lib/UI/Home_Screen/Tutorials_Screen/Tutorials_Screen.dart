import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';
import '../../AppDrawer/AppDrawer.dart';
import 'TutorialCommon_Widget.dart';
import 'infoFlutter_PDF.dart';

class TutorialScreen extends StatefulWidget {
   TutorialScreen({Key? key}) : super(key: key);

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKEy = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
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
                TutorialCommon_Widget(
                    image: Images.infoFlutter,
                    title: 'Introduction to Flutter',
                    onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (ctx){
                       return Flutter_Info();
                     }));
                    }
                ),
                fixheight20,
                TutorialCommon_Widget(
                    image: Images.infoDart,
                    title: 'Introduction to Dart',
                    onPressed: (){

                    }
                ),
                fixheight20,
                TutorialCommon_Widget(
                    image: Images.infoWidgets,
                    title: 'Introduction to Widget',
                    onPressed: (){

                    }
                ),
                fixheight20
              ],
            ),
          ),
        ),
      ),
    );
  }
}
