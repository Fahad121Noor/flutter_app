import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Core/AppColor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Core/ImagePath.dart';

class Code_Screen extends StatefulWidget {
  const Code_Screen({Key? key}) : super(key: key);

  @override
  State<Code_Screen> createState() => _Code_ScreenState();
}

class _Code_ScreenState extends State<Code_Screen> {
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
          padding:
              EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w, bottom: 15.h),
          child: const DartCodeViewer(r'''
            import 'package:flutter/material.dart';
            import '../../Core/ImagePath.dart';

class Image_UI extends StatelessWidget {
  const Image_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Image From Asset",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.asset(
              Images.flutterImage,
              fit: BoxFit.cover,

            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Image From Net with progress",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.network(
              'https://img.favpng.com/25/9/1/dart-google-developers-flutter-android-png-favpng-vi7iwNmVaBCVr91EF35XrnFfc.jpg',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
                   ''',

            backgroundColor: Colors.transparent,
            // baseStyle: GoogleFonts.lato(),
            // commentColor: Colors.grey,
            // baseColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}
