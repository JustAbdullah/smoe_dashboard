import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:smoe_dashboard/core/data/model/list_of_order.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../customWidgets/custom_container.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../../responsive_screen.dart';
import '../menu/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: Directionality(
            textDirection: TextDirection.rtl,
            child: Stack(children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child:
                          ///////////////////////Row Show Te menu and The Context OF Page,,,,,,,,,,..............

                          Directionality(
                              textDirection: TextDirection.rtl,
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
                                    ResponsiveTheScreen(
                                        desktop: Menu(), mobile: Menu()),
                                    SizedBox(
                                      width: 00.w,
                                    ),
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        alignment: Alignment.topCenter,
                                        child: ////////////////////////Single Of Show All Context Of Page.................../////////

                                            SingleChildScrollView(
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.w),
                                                  child: TextCustom(
                                                      height: 1.3.h,
                                                      theText:
                                                          "الواجهة الرئيسية والاحصائيات العامة- مشروع لوحة تحكم سموي",
                                                      fontSizeWidth: 15,
                                                      fontFamily:
                                                          AppTextStyles.Almarai,
                                                      fontColor: Color.fromARGB(
                                                          255, 75, 75, 76))),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w),
                                                  child: TextCustom(
                                                      height: 1.3.h,
                                                      theText:
                                                          "الصفحة الرئيسية- لوحة التحكم",
                                                      fontSizeWidth: 23,
                                                      fontFamily:
                                                          AppTextStyles.Almarai,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontColor: AppColors
                                                          .blackColor)),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 80.w,
                                                      height: 100.h,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            AppColors.redColor,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.2),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "32",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                                SizedBox(
                                                                  width: 1.w,
                                                                ),
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "منتج",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            TextCustom(
                                                                height: 1.3.h,
                                                                theText:
                                                                    "عدد المنتجات المتوفرة في قاعدة البيانات",
                                                                fontSizeWidth:
                                                                    14,
                                                                fontFamily:
                                                                    AppTextStyles
                                                                        .Almarai,
                                                                fontColor: AppColors
                                                                    .whiteColorTypeTwo)
                                                          ]),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      width: 80.w,
                                                      height: 100.h,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF3572EF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.2),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "32",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                                SizedBox(
                                                                  width: 1.w,
                                                                ),
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "مستخدم",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            TextCustom(
                                                                height: 1.3.h,
                                                                theText:
                                                                    "عدد المستخدمين المسجلين  في قاعدة البيانات",
                                                                fontSizeWidth:
                                                                    14,
                                                                fontFamily:
                                                                    AppTextStyles
                                                                        .Almarai,
                                                                fontColor: AppColors
                                                                    .whiteColorTypeTwo)
                                                          ]),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      width: 80.w,
                                                      height: 100.h,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF40A578),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.2),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "32",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                                SizedBox(
                                                                  width: 1.w,
                                                                ),
                                                                TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "العروض",
                                                                    fontSizeWidth:
                                                                        23,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        AppColors
                                                                            .whiteColor),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 5.h,
                                                            ),
                                                            TextCustom(
                                                                height: 1.3.h,
                                                                theText:
                                                                    "عدد العروض المتوفرة  في قاعدة البيانات",
                                                                fontSizeWidth:
                                                                    14,
                                                                fontFamily:
                                                                    AppTextStyles
                                                                        .Almarai,
                                                                fontColor: AppColors
                                                                    .whiteColorTypeTwo)
                                                          ]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w),
                                                  child: TextCustom(
                                                      height: 1.3.h,
                                                      theText:
                                                          "الصفحة الرئيسية- معلومات حول المندوبين",
                                                      fontSizeWidth: 23,
                                                      fontFamily:
                                                          AppTextStyles.Almarai,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontColor: AppColors
                                                          .blackColor)),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.w),
                                                  child: TextCustom(
                                                      height: 1.3.h,
                                                      theText:
                                                          "إحصائيات شاملة حول عدد المندوبين المندوبين المعتمدين او طلبات الإنتداب",
                                                      fontSizeWidth: 15,
                                                      fontFamily:
                                                          AppTextStyles.Almarai,
                                                      fontColor: Color.fromARGB(
                                                          255, 75, 75, 76))),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.w),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 120.w,
                                                      height: 150.h,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 249, 246, 246),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                            spreadRadius: 5,
                                                            blurRadius: 5,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 7.w,
                                                                vertical: 7.h),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              TextCustom(
                                                                  height: 1.3.h,
                                                                  theText:
                                                                      "إحصائيات المندوبين",
                                                                  fontSizeWidth:
                                                                      20,
                                                                  fontFamily:
                                                                      AppTextStyles
                                                                          .Almarai,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontColor:
                                                                      AppColors
                                                                          .balckColorTypeThree),
                                                              SizedBox(
                                                                height: 17.h,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10.w),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 17.h,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3),
                                                                      color: Color(
                                                                          0xFF40A578)),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 5.h,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "عدد المندوبين المعتمدين  لتأدية الخدمة والمتوفرين في قاعدة البيانات",
                                                                    fontSizeWidth:
                                                                        15,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            81,
                                                                            84,
                                                                            89)),
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  TextCustom(
                                                                      height:
                                                                          1.3.h,
                                                                      theText:
                                                                          "120",
                                                                      fontSizeWidth:
                                                                          20,
                                                                      fontFamily:
                                                                          AppTextStyles
                                                                              .Almarai,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontColor:
                                                                          AppColors
                                                                              .balckColorTypeThree),
                                                                  SizedBox(
                                                                    width: 2.w,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        30.h,
                                                                    width:
                                                                        0.3.w,
                                                                    color: const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            103,
                                                                            104,
                                                                            106)
                                                                        .withOpacity(
                                                                            0.4),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2.w,
                                                                  ),
                                                                  TextCustom(
                                                                      height:
                                                                          1.3.h,
                                                                      theText:
                                                                          "مندوب",
                                                                      fontSizeWidth:
                                                                          20,
                                                                      fontFamily:
                                                                          AppTextStyles
                                                                              .Almarai,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontColor:
                                                                          Color(
                                                                              0xFF40A578)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 0.h,
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 5.w,
                                                    ),
                                                    Container(
                                                      width: 120.w,
                                                      height: 150.h,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 249, 246, 246),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                            spreadRadius: 5,
                                                            blurRadius: 5,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 7.w,
                                                                vertical: 7.h),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              TextCustom(
                                                                  height: 1.3.h,
                                                                  theText:
                                                                      "أحصائيات الانتداب",
                                                                  fontSizeWidth:
                                                                      20,
                                                                  fontFamily:
                                                                      AppTextStyles
                                                                          .Almarai,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontColor:
                                                                      AppColors
                                                                          .balckColorTypeThree),
                                                              SizedBox(
                                                                height: 17.h,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            10.w),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 17.h,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              3),
                                                                      color: Color(
                                                                          0xFFA91D3A)),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 5.h,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: TextCustom(
                                                                    height:
                                                                        1.3.h,
                                                                    theText:
                                                                        "عدد طلبات الإنتداب للعمل كمندوب ومقدم للخدمة المتوفرين في قاعدة البيانات",
                                                                    fontSizeWidth:
                                                                        15,
                                                                    fontFamily:
                                                                        AppTextStyles
                                                                            .Almarai,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontColor:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            81,
                                                                            84,
                                                                            89)),
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  TextCustom(
                                                                      height:
                                                                          1.3.h,
                                                                      theText:
                                                                          "420",
                                                                      fontSizeWidth:
                                                                          20,
                                                                      fontFamily:
                                                                          AppTextStyles
                                                                              .Almarai,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontColor:
                                                                          AppColors
                                                                              .balckColorTypeThree),
                                                                  SizedBox(
                                                                    width: 2.w,
                                                                  ),
                                                                  Container(
                                                                    height:
                                                                        30.h,
                                                                    width:
                                                                        0.3.w,
                                                                    color: const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            103,
                                                                            104,
                                                                            106)
                                                                        .withOpacity(
                                                                            0.4),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2.w,
                                                                  ),
                                                                  TextCustom(
                                                                      height:
                                                                          1.3.h,
                                                                      theText:
                                                                          "إنتداب",
                                                                      fontSizeWidth:
                                                                          20,
                                                                      fontFamily:
                                                                          AppTextStyles
                                                                              .Almarai,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontColor:
                                                                          Color(
                                                                              0xFFA91D3A)),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 00.h,
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 30.h,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10.w),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 20.h),
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 70.w,
                                                            height: 150.h,
                                                            decoration: BoxDecoration(
                                                                color: Color(
                                                                    0xFF0A1D56),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10.w),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          30.h,
                                                                    ),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "3200",
                                                                        fontSizeWidth:
                                                                            20,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            Colors.white),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "عدد الطلبيات",
                                                                        fontSizeWidth:
                                                                            20,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            AppColors.yellowColor),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "عدد الطلبيات التى يجب تاديتها للعملاء",
                                                                        fontSizeWidth:
                                                                            15,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontColor:
                                                                            Colors.white),
                                                                  ]),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Container(
                                                            width: 70.w,
                                                            height: 280.h,
                                                            decoration: BoxDecoration(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        123,
                                                                        14,
                                                                        0),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          10.w),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                      height:
                                                                          30.h,
                                                                    ),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "تنبية..!",
                                                                        fontSizeWidth:
                                                                            20,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            Colors.white),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "هذة الطلبيات المستعجلة ولم يتم تجهيزها بعد",
                                                                        fontSizeWidth:
                                                                            20,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            AppColors.yellowColor),
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "يجب تجهيزها وتسليمها للمندوب حتى يقوم بتسليم الطلبية",
                                                                        fontSizeWidth:
                                                                            15,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontColor:
                                                                            Colors.white),
                                                                  ]),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 25,
                                                    ),
                                                    Container(
                                                      width: 200.w,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 249, 246, 246),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.1),
                                                            spreadRadius: 5,
                                                            blurRadius: 5,
                                                            offset:
                                                                Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Container(
                                                                color: AppColors
                                                                    .theAppColorBlue,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: 50.h,
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width:
                                                                            40.w,
                                                                        child: TextCustom(
                                                                            theText:
                                                                                "رقم الطلبية",
                                                                            fontSizeWidth:
                                                                                5.2.sp,
                                                                            fontFamily: AppTextStyles.Almarai,
                                                                            fontColor: AppColors.balckColorTypeThree,
                                                                            height: 1.5.h),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            5.w,
                                                                      ),
                                                                      Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width:
                                                                            40.w,
                                                                        child: TextCustom(
                                                                            theText:
                                                                                "تاريخ الطلبية",
                                                                            fontSizeWidth:
                                                                                5.2.sp,
                                                                            fontFamily: AppTextStyles.Almarai,
                                                                            fontColor: AppColors.balckColorTypeThree,
                                                                            height: 1.5.h),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            5.w,
                                                                      ),
                                                                      Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width:
                                                                            40.w,
                                                                        child: TextCustom(
                                                                            theText:
                                                                                "الاجمالي",
                                                                            fontSizeWidth:
                                                                                5.2.sp,
                                                                            fontFamily: AppTextStyles.Almarai,
                                                                            fontColor: AppColors.balckColorTypeThree,
                                                                            height: 1.5.h),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            5.w,
                                                                      ),
                                                                      Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        width:
                                                                            40.w,
                                                                        child: TextCustom(
                                                                            theText:
                                                                                "إدارة",
                                                                            fontSizeWidth:
                                                                                5.2.sp,
                                                                            fontFamily: AppTextStyles.Almarai,
                                                                            fontColor: AppColors.balckColorTypeThree,
                                                                            height: 1.5.h),
                                                                      ),
                                                                    ]),
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: 0.1.h,
                                                                color: AppColors
                                                                    .balckColorTypeThree,
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              SizedBox(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height,
                                                                child: FutureBuilder<
                                                                        List<
                                                                            Order>>(
                                                                    future: homeController
                                                                        .fetchOrders(),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      if (snapshot
                                                                              .connectionState ==
                                                                          ConnectionState
                                                                              .waiting) {
                                                                        return Center(
                                                                            child:
                                                                                CircularProgressIndicator());
                                                                      } else if (snapshot
                                                                          .hasError) {
                                                                        return Center(
                                                                            child:
                                                                                Text('Error: ${snapshot.error}'));
                                                                      } else {
                                                                        return ListView.builder(
                                                                            itemCount: snapshot.data!.length,
                                                                            itemBuilder: (context, index) {
                                                                              Order order = snapshot.data![index];
                                                                              return Column(
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                                                children: [
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width,
                                                                                    height: 80.h,
                                                                                    child: Padding(
                                                                                      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                                                                                      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                        Container(
                                                                                          alignment: Alignment.center,
                                                                                          width: 40.w,
                                                                                          child: TextCustom(theText: order.order_number, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontWeight: FontWeight.bold, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: 5.w,
                                                                                        ),
                                                                                        Container(
                                                                                          alignment: Alignment.center,
                                                                                          width: 40.w,
                                                                                          child: SingleChildScrollView(
                                                                                            child: Column(
                                                                                              children: [
                                                                                                TextCustom(theText: "${order.date_order_user}", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                                TextCustom(theText: "${order.time_order_user}", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: 3.w,
                                                                                        ),
                                                                                        Container(
                                                                                          alignment: Alignment.center,
                                                                                          width: 40.w,
                                                                                          child: Row(
                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            children: [
                                                                                              TextCustom(theText: "SAR", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontWeight: FontWeight.bold, fontColor: const Color.fromARGB(255, 102, 163, 105), height: 1.5.h),
                                                                                              SizedBox(
                                                                                                width: 1.w,
                                                                                              ),
                                                                                              TextCustom(theText: order.total, fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontWeight: FontWeight.bold, fontColor: const Color.fromARGB(255, 102, 163, 105), height: 1.5.h),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        SizedBox(
                                                                                          width: 5.w,
                                                                                        ),
                                                                                        InkWell(
                                                                                            onTap: () {
                                                                                              homeController.showMore.value = true;
                                                                                            },
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(color: Color(0xFF3ABEF9), borderRadius: BorderRadius.circular(7)),
                                                                                              alignment: Alignment.center,
                                                                                              width: 40.w,
                                                                                              child: TextCustom(theText: "العرض", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.whiteColor, height: 1.5.h),
                                                                                            )),
                                                                                      ]),
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    height: 10.h,
                                                                                  ),
                                                                                  Container(
                                                                                    width: MediaQuery.of(context).size.width - 20,
                                                                                    height: 0.1.h,
                                                                                    color: AppColors.balckColorTypeThree,
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            });
                                                                      }
                                                                    }),
                                                              ),
                                                            ]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ]))),
                                  ])))))
            ])));
  }
}
