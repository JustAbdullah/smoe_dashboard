import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controllers/home_controller.dart';
import '../../../core/constant/app_text_styles.dart';
import '../../../core/constant/appcolors.dart';
import '../../../core/constant/images_path.dart';
import '../../../customWidgets/custom_container.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../customWidgets/custom_container_api.dart';
import '../../../customWidgets/custom_padding.dart';
import '../../../customWidgets/custom_text.dart';
import '../../responsive_screen.dart';
import '../menu/menu.dart';

class AddMainTypeScreenDeskTop extends StatefulWidget {
  const AddMainTypeScreenDeskTop({super.key});

  @override
  State<AddMainTypeScreenDeskTop> createState() =>
      _AddMainTypeScreenDeskTopState();
}

class _AddMainTypeScreenDeskTopState extends State<AddMainTypeScreenDeskTop> {
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
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                    SingleChildScrollView(
                        child: Container(
                      width: 300.w,
                      child: PaddingCustom(
                        theBottom: 20.h,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: 40.h,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: TextCustom(
                                  height: 1.5.h,
                                  theText: "صفحة إضافة-تعديل الانواع الرئيسية",
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
                                padding: EdgeInsets.symmetric(horizontal: 50.w),
                                child: Text(
                                  "لطفًا قم بإدخال البيانات لإضافة-تعديل الانواع الرئيسية في سموي",
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
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      onChanged: (value) {
                                        homeController.nameOFTypeMain = value;
                                        homeController.nameArEditMainType =
                                            value;
                                      },
                                      onSaved: (newValue) {
                                        homeController.nameOFTypeMain =
                                            newValue.toString();
                                        homeController.nameArEditMainType =
                                            newValue.toString();
                                      },
                                      controller: homeController.controllerOne,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'اسم النوع بالعربي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 4,
                                      minLines: 4,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Material(
                                  elevation: 4,
                                  shadowColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: TextFormField(
                                      controller: homeController.controllerTwo,
                                      onChanged: (value) {
                                        homeController.nameEnglishTypeMain =
                                            value;
                                        homeController.nameEnEditMainType =
                                            value;
                                      },
                                      onSaved: (newValue) {
                                        homeController.nameEnglishTypeMain =
                                            newValue.toString();
                                        homeController.nameEnEditMainType =
                                            newValue.toString();
                                      },
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          hintText: 'اسم النوع بالانجليزي',
                                          isDense: true, // important line
                                          contentPadding: EdgeInsets.fromLTRB(
                                              10,
                                              10,
                                              10,
                                              0), // control your hints text size
                                          hintStyle: TextStyle(
                                              fontFamily: AppTextStyles.Almarai,
                                              letterSpacing: 2,
                                              color: AppColors.theAppColorBlue,
                                              fontWeight: FontWeight.bold),
                                          fillColor: Colors.white30,
                                          filled: true,
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              borderSide: BorderSide.none)),
                                      maxLines: 4,
                                      minLines: 4,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 17.h,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            InkWell(
                                onTap: () async {
                                  homeController.chooseAndDisplayImage();
                                },
                                child: Container(
                                  width: 70.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.cyan[600]),
                                  child: Center(
                                    child: TextCustom(
                                        height: 1.5.h,
                                        theText: "اختيار صورة:",
                                        fontSizeWidth: 5.sp,
                                        fontFamily: AppTextStyles.Almarai,
                                        fontColor: AppColors.whiteColor),
                                  ),
                                )),
                            SizedBox(
                              height: 10.h,
                            ),
                            GetX<HomeController>(
                                builder: (controller) => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (controller.isUploadImage.value ==
                                            true)
                                          Image.memory(
                                            controller.imageBytes!,
                                            width: 100.w, // عرض الصورة
                                            height: 200.h, // ارتفاع الصورة
                                            fit: BoxFit
                                                .cover, // ضبط الصورة لتغطية الحجم المحدد
                                          )
                                        else
                                          TextCustom(
                                              height: 1.5.h,
                                              theText: "لم يتم إختيار اي صورة",
                                              fontSizeWidth: 5.sp,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontColor: AppColors.redColor),
                                      ],
                                    )),
                            SizedBox(
                              height: 40.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (homeController.isChooseEditMainType ==
                                        1) {
                                      if (homeController.EditImage == 1) {
                                        homeController.uploadImageToServer();
                                      }
                                      homeController.editMainType(
                                          homeController
                                              .ofIdMainTypeDeleteOrEdit
                                              .toString(),
                                          homeController.nameArEditMainType
                                              .toString(),
                                          homeController.nameEnEditMainType
                                              .toString(),
                                          homeController.iconEditMainType
                                              .toString());
                                    } else {
                                      homeController.addMainType(
                                          homeController.nameOFTypeMain
                                              .toString(),
                                          homeController.nameEnglishTypeMain
                                              .toString(),
                                          homeController.imageName.toString());
                                      homeController.uploadImageToServer();
                                    }
                                  },
                                  child: ContainerCustomApi(
                                    colorContainer: AppColors.yellowColor,
                                    theBorderRadius: 15,
                                    heigthContainer: 33.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 47.h),
                                      child: Text(
                                        "إضافة-تعديل النوع الان",
                                        style: TextStyle(
                                          color: AppColors.balckColorTypeThree,
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
                          visible: controller.addToDataBase.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.addToDataBase.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.addToDataBase.value,
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "انتظر قليلاً يتم إضافة-تعديل البيانات",
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontFamily: AppTextStyles.Almarai,
                                    fontSize: 4.sp,
                                  ),
                                ),
                              ],
                            ),
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
                                      "تم إضافة-تعديل البيانات  بنجاح ",
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
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            color: Colors.black38,
                          ))),
                  GetX<HomeController>(
                      builder: (controller) => Visibility(
                          visible: controller.isErrorToAddData.value,
                          child: PaddingCustom(
                            theTop: 0.h,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Lottie.asset(ImagesPath.loading, width: 70.w),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20.w),
                                    child: Text(
                                      "هنالك مشكلة في عملية الإضافة حاليًا",
                                      style: TextStyle(
                                          height: 1.7.h,
                                          color: Colors.redAccent,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 4.5.sp,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        controller.clearTheData();
                                      },
                                      child: ContainerCustom(
                                        widthContainer: 80,
                                        heigthContainer: 40,
                                        colorContainer: AppColors.yellowColor,
                                        child: Center(
                                          child: TextCustom(
                                              height: 1.5.h,
                                              theText: "الاخفاء",
                                              fontSizeWidth: 5.5.sp,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontColor: AppColors
                                                  .balckColorTypeThree),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          ))),
                ],
              ))),
    );
  }
}
