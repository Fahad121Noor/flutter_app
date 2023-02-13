import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';

class WebView_Screen extends StatefulWidget {
  String title;
  String url;
  WebView_Screen(
      {Key? key, required this.title,required this.url})
      : super(key: key);

  @override
  State<WebView_Screen> createState() => _WebView_ScreenState();
}

class _WebView_ScreenState extends State<WebView_Screen> {

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Images.backGround,
                        ),
                        fit: BoxFit.cover,
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back_ios_new,
                            color: AppColors.witheColor,),
                        ),
                        Text(widget.title,
                          style: TextFonts.topText,
                        ),
                        fixwidth15
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: WebViewWidget(
                    controller: controller
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
