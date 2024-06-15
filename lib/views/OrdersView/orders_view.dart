import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smoe_dashboard/controllers/home_controller.dart';
import 'package:smoe_dashboard/views/menu/menu.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../core/data/model/list_of_order.dart';
import '../../customWidgets/custom_container.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../../customWidgets/search_text_filed.dart';
import '../../responsive_screen.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
        body: Directionality(
      textDirection: TextDirection.rtl,
      child: Stack(
        children: [
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
                    ResponsiveTheScreen(desktop: Menu(), mobile: Menu()),
                    SizedBox(
                      width: 00.w,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      alignment: Alignment.topCenter,
                      child: ////////////////////////Single Of Show All Context Of Page.................../////////

                          SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 10,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText: "واجهة طلبيات المنتج",
                                      fontSizeWidth: 8.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.yellowColor),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 5,
                                  theRight: 0,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText:
                                          "معلومات واحصائيات شاملة عن طلبيات المنتج المتوفرة في قاعدة البيانات",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                              SizedBox(
                                  width: 140.w,
                                  child: GetX<HomeController>(
                                    builder: (controller) =>
                                        TextFormFiledCustomSearch(
                                      labelData: "عملية البحث في الصفوف",
                                      hintData: "ادخل رقم الطلبية",
                                      iconData: controller
                                                  .TheResultNameSearch.value ==
                                              true
                                          ? Icons.close
                                          : Icons.search,
                                      controllerData:
                                          homeController.searchingName,
                                      value: (value) {
                                        controller.nameSearching =
                                            value.toString();
                                        return value;
                                      },
                                      fillColor: AppColors.whiteColor,
                                      hintColor: AppColors.balckColorTypeThree,
                                      iconColor:
                                          controller.isSearchingName.value ==
                                                  true
                                              ? AppColors.redColor
                                              : AppColors.balckColorTypeThree,
                                      borderSideColor: AppColors.blackColor,
                                      onTap: () {
                                        controller.searchFlutter();
                                      },
                                      fontColor: AppColors.balckColorTypeThree,
                                      obscureText: false,
                                      keyboardType: TextInputType.text,
                                      autofillHints: [AutofillHints.name],
                                      onChanged: (value) {
                                        controller.isSearchingName.value = true;
                                        controller.nameSearching =
                                            value.toString();
                                        return value;
                                      },
                                      validator: (p0) {},
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: PaddingCustom(
                                      theTop: 15,
                                      theRight: 00,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          child: ////////////////////////Single Of Show All DataBase APi Context Of Page.................../////////
                                              SingleChildScrollView(
                                            child: Column(children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 60.h,
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText:
                                                                "رقم الطلبية",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText:
                                                                "اسم العميل",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText:
                                                                "اسم المندوب",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText:
                                                                "نوع الخدمة",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText: "الاجمالي",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText: "الحالة",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                      SizedBox(
                                                        width: 5.w,
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 35.w,
                                                        child: TextCustom(
                                                            theText: "الجدولة",
                                                            fontSizeWidth:
                                                                5.2.sp,
                                                            fontFamily:
                                                                AppTextStyles
                                                                    .Almarai,
                                                            fontColor: AppColors
                                                                .balckColorTypeThree,
                                                            height: 1.5.h),
                                                      ),
                                                    ]),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
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
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: MediaQuery.of(context)
                                                      .size
                                                      .height,
                                                  child:
                                                      FutureBuilder<
                                                              List<Order>>(
                                                          future: homeController
                                                              .fetchOrders(),
                                                          builder: (context,
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
                                                                  child: Text(
                                                                      'Error: ${snapshot.error}'));
                                                            } else {
                                                              return ListView
                                                                  .builder(
                                                                      itemCount: snapshot
                                                                          .data!
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        Order
                                                                            order =
                                                                            snapshot.data![index];
                                                                        return Column(
                                                                          children: [
                                                                            Container(
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: 80.h,
                                                                              child: Padding(
                                                                                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                                                                                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(theText: order.order_id.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(theText: order.order_number.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(theText: order.order_status.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(theText: order.time_order_user.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: Colors.green, height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(theText: order.date_order_user.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: TextCustom(
                                                                                        theText: order.order_status.toString() == "3"
                                                                                            ? "منتهية"
                                                                                            : order.order_status.toString() == "2"
                                                                                                ? "قيد العمل"
                                                                                                : "انتظار",
                                                                                        fontSizeWidth: 5.2.sp,
                                                                                        fontFamily: AppTextStyles.Almarai,
                                                                                        fontColor: order.order_status.toString() == "3"
                                                                                            ? AppColors.redColor
                                                                                            : order.order_status.toString() == "2"
                                                                                                ? Colors.green
                                                                                                : AppColors.yellowColor,
                                                                                        height: 1.5.h),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Container(
                                                                                    alignment: Alignment.center,
                                                                                    width: 35.w,
                                                                                    child: SingleChildScrollView(
                                                                                      child: Column(
                                                                                        children: [
                                                                                          TextCustom(theText: order.order_status.toString(), fontSizeWidth: 4.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                          SizedBox(
                                                                                            height: 2.h,
                                                                                          ),
                                                                                          Directionality(textDirection: TextDirection.ltr, child: TextCustom(theText: order.order_status.toString(), fontSizeWidth: 4.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h)),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
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
                                                          }))
                                            ]),
                                          ),
                                        ),
                                        ///////////////End OF COntextOF API DataBase,,,,,,,,,,,,,,,..........
                                      ))),
                              SizedBox(
                                height: 10.h,
                              ),
                            ]),
                      ),
                    ),
                    ///////////////End OF COntextOF  Page,,,,,,,,,,,,,,,..........
                  ]),
                ),
              ),
            ),
          ),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.showMore.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.w,
                      height: 150.h,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PaddingCustom(
                                theTop: 00,
                                theRight: 00,
                                child: InkWell(
                                  onTap: () {
                                    controller.showMore.value = false;
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 17.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 30,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText: "إدارة وتحكم شاملة لهذا القسم",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                              PaddingCustom(
                                theTop: 40,
                                theRight: 0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.deleteOffer(controller
                                            .ofIdTypeSubTypeDeleteOrEdit
                                            .toString());
                                      },
                                      child: Container(
                                          alignment: Alignment.center,
                                          width: 30.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                            color: AppColors.redColor,
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                          child: Text(
                                            "حذف",
                                            style: TextStyle(
                                              color: AppColors.whiteColor,
                                              fontFamily: AppTextStyles.Almarai,
                                              fontSize: 5.sp,
                                            ),
                                          )),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 30.w,
                                            height: 35.h,
                                            decoration: BoxDecoration(
                                              color: AppColors.yellowColor,
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            child: Text(
                                              "تعديل",
                                              style: TextStyle(
                                                color: AppColors.blackColor,
                                                fontFamily:
                                                    AppTextStyles.Almarai,
                                                fontSize: 5.sp,
                                              ),
                                            ))),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))), ///////////////////Access Right............../////////////////////
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black38,
                  ))),
          GetX<HomeController>(
              builder: (controller) => Visibility(
                  visible: controller.aboutAccessTheAdminMessage.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.w,
                      height: 120.h,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              PaddingCustom(
                                theTop: 00,
                                theRight: 00,
                                child: InkWell(
                                  onTap: () {
                                    controller.aboutAccessTheAdminMessage
                                        .value = false;
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 17.w,
                                      height: 25.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.redColor,
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Text(
                                        "X",
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: PaddingCustom(
                                  theTop: 40,
                                  theRight: 00,
                                  child: TextCustom(
                                      height: 1.5,
                                      theText:
                                          "المعذرة..لاتمتلك الصلاحيات للقيام بهذة العملية",
                                      fontSizeWidth: 4.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppTextStyles.Almarai,
                                      fontColor: AppColors.balckColorTypeThree),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))),
        ],
      ), ///////////////End OF Menu And  Page,,,,,,,,,,,,,,,..........
    ));
  }
}
