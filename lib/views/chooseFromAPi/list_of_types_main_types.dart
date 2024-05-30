import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/app_text_styles.dart';
import '../../../core/constant/appcolors.dart';
import '../../../customWidgets/custom_padding.dart';
import 'package:shimmer/shimmer.dart';

class ListOfMainTypes extends StatelessWidget {
  const ListOfMainTypes({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return FutureBuilder(
        future: homeController.getDataMainTypesDatabase(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              color: AppColors.whiteColorTypeTwo,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data['data'].length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return PaddingCustom(
                        theBottom: 10,
                        theLeft: 0,
                        theRight: 5,
                        theTop: 10,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: InkWell(
                                onTap: () {
                                  homeController.nameOfMainType.value = snapshot
                                      .data['data'][i]['services_main_name_ar']
                                      .toString();
                                  homeController.idTheMainType = snapshot
                                      .data['data'][i]['services_main_id']
                                      .toString();

                                  homeController.idMainSubTypeEdit = snapshot
                                      .data['data'][i]['services_main_id']
                                      .toString();

                                  homeController.idSerivceJobEdit = snapshot
                                      .data['data'][i]['services_main_id']
                                      .toString();
                                  homeController.showTheListOfMainType.value =
                                      false;
                                },
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  width: 100.w,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 1.h, horizontal: 1.w),
                                    child: Text(
                                      snapshot.data['data'][i]
                                          ['services_main_name_ar'],
                                      style: TextStyle(
                                        height: 1,
                                        color: AppColors.blackColor,
                                        fontFamily: AppTextStyles.Almarai,
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              )),
                        ));
                  }),
            );
          } else {
            return ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  return Shimmer.fromColors(
                      baseColor: Color.fromARGB(31, 83, 82, 82),
                      highlightColor: AppColors.whiteColor,
                      enabled: true,
                      child: PaddingCustom(
                        theTop: 10,
                        theBottom: 10,
                        child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 200.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                ))),
                      ));
                });
          }
        });
  }
}
