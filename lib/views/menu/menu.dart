import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GetX<HomeController>(
          builder: (controller) => Container(
                color: Color(0xFF171821),
                height: MediaQuery.of(context).size.height,
                width: 40.w,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                              color: AppColors.theAppColorBlue,
                              shape: BoxShape.circle),
                          child: Image.asset(ImagesPath.logo),
                        ),
                        Text("ســموي",
                            style: TextStyle(
                                color: AppColors.theAppColorBlueWhite,
                                fontFamily: AppTextStyles.Almarai,
                                fontSize: 6.sp,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToHomeScreen();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 0
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الرئيسية",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.typeOfAdmin.value != 2) {
                          controller.aboutAccessTheAdminMessage.value = true;
                        } else {
                          controller.GoToAdminScreen();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 1
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الأدمن",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToUsersScreen();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 2
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "المستخدمين",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToMainTypesScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 3
                                  ? Color(0xFFFFAF45)
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الانواع الرئيسية",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToTHeProductsScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 4
                                  ? Color(0xFFFFAF45)
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "المنتجات",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToOffers();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 5
                                  ? Color(0xFFFFAF45)
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "العروض",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          if (controller.typeOfAdmin.value != 2) {
                            controller.aboutAccessTheAdminMessage.value = true;
                          } else {
                            controller.GoToNotificationsScreen();
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 6
                                  ? Color(0xFFFFAF45)
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الإشعارات",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                        onTap: () {
                          controller.GoToNoticeScreen();
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 37.w,
                          height: 35.h,
                          decoration: BoxDecoration(
                              color: controller.countTheMenu.value == 7
                                  ? Color(0xFFFFAF45)
                                  : Color(0xFF171821),
                              borderRadius: BorderRadius.circular(3)),
                          child: Text(
                            "الملاحظات",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppTextStyles.Almarai,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        if (controller.typeOfAdmin.value != 2) {
                          controller.aboutAccessTheAdminMessage.value = true;
                        } else {
                          controller.GoToServicesMan();
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 8
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "المندوبيين",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToOrders();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 9
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الطلبيات",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToServicesNot();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 11
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "اشعارات-المندوبين",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToInv();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 12
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "الفواتير",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InkWell(
                      onTap: () {
                        controller.GoToAccountsOrders();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 37.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            color: controller.countTheMenu.value == 13
                                ? Color(0xFFFFAF45)
                                : Color(0xFF171821),
                            borderRadius: BorderRadius.circular(3)),
                        child: Text(
                          "طلبات الانضمام",
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontFamily: AppTextStyles.Almarai,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                  ]),
                ),
              )),
    );
  }
}
