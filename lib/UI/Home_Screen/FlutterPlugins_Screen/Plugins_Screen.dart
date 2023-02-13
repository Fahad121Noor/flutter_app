import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';
import 'PluginModel.dart';
import 'WebView.dart';

class Plugins_Screen extends StatefulWidget {
  const Plugins_Screen({Key? key}) : super(key: key);

  @override
  State<Plugins_Screen> createState() => _Plugins_ScreenState();
}

class _Plugins_ScreenState extends State<Plugins_Screen> {
  var searchController = TextEditingController();
  List<PluginModel> PluginList = allPlugin;
  // Widget cusText = Text(
  //   'No Meach Pluguns',
  //   style: TextFonts.commonwitheText,
  // );

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
                  Text('Flutter Plugins',
                    style: TextFonts.topText,
                    ),
                  fixwidth10
                ],
              ),
              fixheight20,
              TextField(
                controller: searchController,
                style: const TextStyle(color: AppColors.witheColor),
                cursorColor: AppColors.blackColor,
                decoration: InputDecoration(
                  hintText: 'search Plugins',
                  hintStyle: const TextStyle(color: AppColors.witheColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide:  const BorderSide(
                      color: Colors.tealAccent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:  BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),

                  ),
                ),
                onChanged: searchWidget,
              ),
              fixheight20,
              Text("All plugins: ${PluginList.length}",
                style: TextFonts.commonwitheText,
              ),
              fixheight15,
              Expanded(
                child: ListView.builder(
                    itemCount: PluginList.length,
                    itemBuilder: (context, index){
                      dynamic data = PluginList[index];
                      return InkWell(
                        onTap: () async{
                          bool result = await InternetConnectionChecker().hasConnection;
                          if(result) {
                            // ignore: use_build_context_synchronously
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (ctx) {
                              return WebView_Screen(
                                title: data.PluginName, url: PluginList[index].url,
                              );
                            }));
                          } else {
                              Fluttertoast.showToast(msg: 'Check Internet Connections',
                                timeInSecForIosWeb: 2,
                                backgroundColor: AppColors.redColor,
                                textColor: AppColors.witheColor,
                                fontSize: 18.sp
                              );
                          }
                        },
                        child: Container(
                          height: 70.h,
                          margin: EdgeInsets.only(bottom: 10.h),
                          decoration: BoxDecoration(
                              color: AppColors.witheColor,
                              borderRadius: BorderRadius.circular(5.r)
                          ),
                          child:  Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: ListTile(
                              leading: Image.asset(
                                Images.home2,
                                height: 30.h,
                                width: 32.w,
                                fit: BoxFit.cover,
                              ),
                              title:  Text(
                                data.PluginName,
                                style: TextFonts.commonblackText,
                               ),
                              subtitle: Text(
                                data.popularity,
                              ),
                              trailing: Padding(
                                padding:  EdgeInsets.only(bottom: 20.h),
                                child: Text(
                                    data.like,
                                  style: TextFonts.commonblackText,
                                ),
                              ),
                            ),
                          ),
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
  void searchWidget(String query){
    final suggestions = allPlugin.where((MaterialModel) {
      final name = MaterialModel.PluginName.toLowerCase();

      final input = query.toLowerCase();
      final  finalData = name.contains(input);
      List searchdata = [];
      finalData == true ? searchdata.add(finalData):
      log(" justlog_____ $finalData");
      return finalData;
    }).toList();
    setState(() {
      PluginList = suggestions;
    });
  }
  List url = [
  ];
}
