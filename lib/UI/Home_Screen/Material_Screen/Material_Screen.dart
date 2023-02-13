import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Core/AppColor.dart';
import '../../../Core/ImagePath.dart';
import '../../../Core/SizeBox.dart';
import '../../../Core/Text_Fonts.dart';
import 'MaterialCommon_Screen.dart';
import 'MaterialModel.dart';

class MaterialScreen extends StatefulWidget {
   MaterialScreen({Key? key}) : super(key: key);

  @override
  State<MaterialScreen> createState() => _MaterialScreenState();
}

class _MaterialScreenState extends State<MaterialScreen> {

  var searchController = TextEditingController();
   List<MaterialModel> modelList = allData;

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
                  Text('Material',
                    style: TextFonts.topText,),
                  fixwidth10
                ],
              ),
             fixheight20,
              TextField(
                controller: searchController,
                style: const TextStyle(color: AppColors.witheColor),
                decoration: InputDecoration(
                  hintText: 'search Widget',
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
              Expanded(
                child: ListView.builder(
                    itemCount: modelList.length,
                    itemBuilder: (context, index){
                      dynamic data = modelList[index];
                      return InkWell(
                        onTap: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return Common_Screen(title: data.screenName,
                                widgetData: data.widgetData);
                          }));
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
                                data.screenName,
                                style: TextFonts.commonblackText,
                              ),
                              subtitle: Text('Display Information and '
                                  'actions relating to the current screen',
                                style: TextStyle(fontSize: 13.sp),),
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
   // List<Map<dynamic, dynamic>> result = [];
    final suggestions = allData.where((MaterialModel) {
      final name = MaterialModel.screenName.toLowerCase();

      final input = query.toLowerCase();
     // log("this is name $name");
     // log("this is input $input");
   final  finalData = name.contains(input);
   List searchdata = [];
   finalData == true ? searchdata.add(finalData):log(" justlog_____ $finalData");
   //
   // log('searchdata_______ $searchdata');
   // log("this is the finaldata of search $finalData");
      return finalData;
    }).toList();

   // log("this is suggestions $suggestions");
    setState(() {
      modelList = suggestions;
    });
  }
}

