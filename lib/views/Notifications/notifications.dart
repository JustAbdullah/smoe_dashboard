import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/app_text_styles.dart';
import '../../../core/constant/appcolors.dart';
import '../../../customWidgets/custom_container.dart';

import 'package:get/get.dart';

import '../../../customWidgets/custom_container_api.dart';
import '../../../customWidgets/custom_padding.dart';
import '../../../customWidgets/custom_text.dart';
import '../../responsive_screen.dart';
import '../menu/menu.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: Stack(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                        SingleChildScrollView(
                            child: Container(
                          width: 300.w,
                          child: PaddingCustom(
                            theBottom: 20.h,
                            child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: Column(children: [
                                SizedBox(
                                  height: 40.h,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: TextCustom(
                                      height: 1.5.h,
                                      theText: "صفحة إرسال الإشعارات",
                                      fontSizeWidth: 7.sp,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.blackColor),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 50.w),
                                    child: Text(
                                      "لطفا قم بإدخال البيانات التالية لإرسال الإشعارات لكافة المستخدمين",
                                      style: TextStyle(
                                          height: 1.5.h,
                                          fontSize: 5.sp,
                                          fontFamily: AppTextStyles.Almarai,
                                          color: AppColors.balckColorTypeThree),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 17.h,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Material(
                                      elevation: 4,
                                      shadowColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: TextFormField(
                                          onChanged: (value) {
                                            homeController.titleNo = value;
                                          },
                                          onSaved: (newValue) {
                                            homeController.titleNo =
                                                newValue.toString();
                                          },
                                          controller:
                                              homeController.controllerOne,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              hintText: 'عنوان الإشعار',
                                              isDense: true, // important line
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10,
                                                  10,
                                                  10,
                                                  0), // control your hints text size
                                              hintStyle: TextStyle(
                                                  fontFamily:
                                                      AppTextStyles.Almarai,
                                                  letterSpacing: 2,
                                                  color:
                                                      AppColors.theAppColorBlue,
                                                  fontWeight: FontWeight.bold),
                                              fillColor: Colors.white30,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: BorderSide.none)),
                                          maxLines: 2,
                                          minLines: 2,
                                        ),
                                      ),
                                    )),
                                SizedBox(
                                  height: 17.h,
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Material(
                                      elevation: 4,
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12),
                                        child: TextFormField(
                                          controller:
                                              homeController.controllerTwo,
                                          onChanged: (value) {
                                            homeController.bodyNo = value;
                                          },
                                          onSaved: (newValue) {
                                            homeController.bodyNo =
                                                newValue.toString();
                                          },
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                              hintText: 'محتوى الاشعار',
                                              isDense: true, // important line
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10,
                                                  10,
                                                  10,
                                                  0), // control your hints text size
                                              hintStyle: TextStyle(
                                                  fontFamily:
                                                      AppTextStyles.Almarai,
                                                  letterSpacing: 2,
                                                  color:
                                                      AppColors.theAppColorBlue,
                                                  fontWeight: FontWeight.bold),
                                              fillColor: Colors.white30,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: BorderSide.none)),
                                          maxLines: 15,
                                          minLines: 15,
                                        ),
                                      ),
                                    )),
                                SizedBox(
                                  height: 30.h,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        homeController.sendNo(
                                          homeController.titleNo.toString(),
                                          homeController.bodyNo.toString(),
                                        );
                                        homeController.isAddData.value = true;
                                      },
                                      child: ContainerCustomApi(
                                        colorContainer: AppColors.yellowColor,
                                        theBorderRadius: 15,
                                        heigthContainer: 33.h,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 47.h),
                                          child: Text(
                                            "أرسال الإشعار",
                                            style: TextStyle(
                                              color:
                                                  AppColors.balckColorTypeThree,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontSize: 6.sp,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                            ),
                          ),
                        )),
                      ]),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isAddData.value,
                          child: PaddingCustom(
                            theTop: 00.h,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Text(
                                      "تم إرسال الإشعار بنجاح",
                                      style: TextStyle(
                                          height: 1.7.h,
                                          color: Colors.greenAccent,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 4.5.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      controller.clearTheData();
                                    },
                                    child: ContainerCustom(
                                      widthContainer: 80,
                                      heigthContainer: 50,
                                      colorContainer: AppColors.yellowColor,
                                      child: TextCustom(
                                          height: 1.5.h,
                                          theText: "الاخفاء",
                                          fontSizeWidth: 5.5.sp,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontColor:
                                              AppColors.balckColorTypeThree),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))),
                ],
              ))),
    );
  }
}
