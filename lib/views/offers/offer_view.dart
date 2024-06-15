import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smoe_dashboard/controllers/home_controller.dart';
import 'package:smoe_dashboard/views/menu/menu.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constant/app_text_styles.dart';
import '../../core/constant/appcolors.dart';
import '../../core/constant/images_path.dart';
import '../../core/data/model/offers.dart';
import '../../customWidgets/custom_container.dart';
import '../../customWidgets/custom_container_api.dart';
import '../../customWidgets/custom_padding.dart';
import '../../customWidgets/custom_text.dart';
import '../../customWidgets/search_text_filed.dart';
import '../../responsive_screen.dart';
import 'add_offers.dart';

class ViewOffers extends StatelessWidget {
  const ViewOffers({super.key});

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
                                    theText: "واجهة العروض سموي",
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
                                        "معلومات واحصائيات شاملة عن العروض المتوفرة في قاعدة البيانات",
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
                                    hintData: "ادخل اسم العرض ",
                                    iconData:
                                        controller.TheResultNameSearch.value ==
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
                                        controller.isSearchingName.value == true
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
                                          horizontal: 10.w),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.83,
                                        height: 470.h,
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
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "المعرف",
                                                          fontSizeWidth: 5.2.sp,
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
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText:
                                                              "اسم العرض بالعربي",
                                                          fontSizeWidth: 5.2.sp,
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
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "وصف العرض",
                                                          fontSizeWidth: 5.2.sp,
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
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "سعر العرض",
                                                          fontSizeWidth: 5.2.sp,
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
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "صورة العرض",
                                                          fontSizeWidth: 5.2.sp,
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
                                                      width: 40.w,
                                                      child: TextCustom(
                                                          theText: "التحكم",
                                                          fontSizeWidth: 5.2.sp,
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
                                              color:
                                                  AppColors.balckColorTypeThree,
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              height: 400.h,
                                              child: GetX<HomeController>(
                                                builder: (controller) => FutureBuilder<
                                                        List<offers>>(
                                                    future: controller
                                                                .TheResultNameSearch
                                                                .value ==
                                                            true
                                                        ? controller
                                                            .searchinOffers(
                                                                controller
                                                                    .nameSearching
                                                                    .toString())
                                                        : homeController
                                                            .getDataOffersFromDatabase(),
                                                    builder:
                                                        (BuildContext context,
                                                            AsyncSnapshot
                                                                snapshot) {
                                                      if (snapshot.hasData) {
                                                        return controller
                                                                    .noDataSearching
                                                                    .value ==
                                                                false
                                                            ? Center(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    TextCustom(
                                                                        height: 1.3
                                                                            .h,
                                                                        theText:
                                                                            "لايوجد هنالك بيانات من عملية البحث",
                                                                        fontSizeWidth:
                                                                            15,
                                                                        fontFamily:
                                                                            AppTextStyles
                                                                                .Almarai,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontColor:
                                                                            AppColors.theAppColorBlue),
                                                                  ],
                                                                ),
                                                              )
                                                            : ListView.builder(
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis
                                                                        .vertical,
                                                                itemCount:
                                                                    snapshot
                                                                        .data!
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        index) {
                                                                  offers offer =
                                                                      snapshot.data![
                                                                          index];

                                                                  return Column(
                                                                    children: [
                                                                      Container(
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        height:
                                                                            80.h,
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsets.symmetric(
                                                                              horizontal: 10.w,
                                                                              vertical: 10.h),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: offer.id.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: offer.name.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: offer.about.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.balckColorTypeThree, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                Container(
                                                                                  alignment: Alignment.center,
                                                                                  width: 40.w,
                                                                                  child: TextCustom(theText: offer.price.toString(), fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: Colors.green, height: 1.5.h),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                CachedNetworkImage(
                                                                                    width: 40.w,
                                                                                    height: 40.h,
                                                                                    fit: BoxFit.contain,
                                                                                    imageUrl: offer.img.toString(),
                                                                                    imageBuilder: (context, imageProvider) => Container(
                                                                                          decoration: BoxDecoration(
                                                                                            borderRadius: BorderRadius.circular(5),
                                                                                            image: DecorationImage(
                                                                                              image: imageProvider,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                    placeholder: (context, url) => SizedBox(
                                                                                        child: ContainerCustom(
                                                                                            colorContainer: AppColors.yellowColor,
                                                                                            heigthContainer: 40.h,
                                                                                            widthContainer: 40.w,
                                                                                            child: TextCustom(
                                                                                              theText: "SMOE",
                                                                                              fontSizeWidth: 20,
                                                                                              fontFamily: AppTextStyles.Marhey,
                                                                                              fontColor: AppColors.blackColor,
                                                                                              height: 0.1,
                                                                                            )))),
                                                                                SizedBox(
                                                                                  width: 5.w,
                                                                                ),
                                                                                InkWell(
                                                                                    onTap: () {
                                                                                      if (homeController.typeOfAdmin.value != 2) {
                                                                                        homeController.aboutAccessTheAdminMessage.value = true;
                                                                                      } else {
                                                                                        ////////////////
                                                                                        homeController.idEditOffers = int.parse(offer.id);
                                                                                        homeController.nameEditOfferAr = offer.name.toString();
                                                                                        homeController.ImageEditOfferAr = offer.img.toString();
                                                                                        homeController.AboutEditOfferAr = offer.about.toString();
                                                                                        homeController.PriceOfferEdit = int.parse(offer.price);
                                                                                        homeController.showMore.value = true;
                                                                                      }
                                                                                    },
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(3)),
                                                                                      alignment: Alignment.center,
                                                                                      width: 40.w,
                                                                                      child: TextCustom(theText: "إدارة", fontSizeWidth: 5.2.sp, fontFamily: AppTextStyles.Almarai, fontColor: AppColors.whiteColor, height: 1.5.h),
                                                                                    )),
                                                                              ]),
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            10.h,
                                                                      ),
                                                                      Container(
                                                                        width: MediaQuery.of(context).size.width -
                                                                            20,
                                                                        height:
                                                                            0.1.h,
                                                                        color: AppColors
                                                                            .balckColorTypeThree,
                                                                      ),
                                                                    ],
                                                                  );
                                                                });
                                                      } else {
                                                        return ListView.builder(
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount: 5,
                                                            shrinkWrap: true,
                                                            itemBuilder:
                                                                (context, i) {
                                                              return Shimmer
                                                                  .fromColors(
                                                                      baseColor: Color.fromARGB(
                                                                          31,
                                                                          169,
                                                                          167,
                                                                          167),
                                                                      highlightColor:
                                                                          AppColors
                                                                              .whiteColor,
                                                                      enabled:
                                                                          true,
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.symmetric(horizontal: 10.h),
                                                                        child:
                                                                            PaddingCustom(
                                                                          theBottom:
                                                                              10,
                                                                          child:
                                                                              ContainerCustom(
                                                                            theBorderRadius:
                                                                                10,
                                                                            colorContainer:
                                                                                AppColors.whiteColor,
                                                                            heigthContainer:
                                                                                130,
                                                                            widthContainer:
                                                                                MediaQuery.sizeOf(context).width,
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              child: Row(
                                                                                children: [
                                                                                  Row(
                                                                                    children: [
                                                                                      Column(
                                                                                        children: [
                                                                                          InkWell(
                                                                                            onTap: () {},
                                                                                            child: Image.asset(
                                                                                              "${ImagesPath.logo}",
                                                                                              width: 100,
                                                                                              height: 100,
                                                                                              fit: BoxFit.contain,
                                                                                            ),
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 10.h,
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 5.w,
                                                                                  ),
                                                                                  Column(
                                                                                    children: [
                                                                                      Align(
                                                                                        alignment: Alignment.topCenter,
                                                                                        child: PaddingCustom(
                                                                                          theTop: 30,
                                                                                          child: TextCustom(
                                                                                            height: 1.5.h,
                                                                                            theText: "يتم التحميل",
                                                                                            fontColor: AppColors.blackColor,
                                                                                            fontFamily: AppTextStyles.Almarai,
                                                                                            fontSizeWidth: 6.sp,
                                                                                            fontWeight: FontWeight.bold,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Container(
                                                                                        width: 150.w,
                                                                                        height: 100.h,
                                                                                        child: PaddingCustom(
                                                                                          theTop: 15,
                                                                                          child: Text(
                                                                                            "يتم التحميل",
                                                                                            maxLines: 4,
                                                                                            style: TextStyle(fontSize: 14.sp, height: 1.7.h, color: AppColors.balckColorTypeThree, fontFamily: AppTextStyles.Almarai),
                                                                                            textAlign: TextAlign.center,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsets.symmetric(vertical: 10.h),
                                                                                    child: Column(
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Align(
                                                                                          alignment: Alignment.topCenter,
                                                                                          child: PaddingCustom(
                                                                                            theTop: 5,
                                                                                            child: ContainerCustomApi(
                                                                                              colorContainer: AppColors.theAppColorBlue,
                                                                                              theBorderRadius: 15,
                                                                                              heigthContainer: 15.h,
                                                                                              child: Padding(
                                                                                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                                                                                child: Text(
                                                                                                  "يتم التحميل",
                                                                                                  style: TextStyle(
                                                                                                    color: AppColors.blackColor,
                                                                                                    fontFamily: AppTextStyles.Almarai,
                                                                                                    fontSize: 14.sp,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ));
                                                            });
                                                      }
                                                    }),
                                              ),
                                            )
                                          ]),
                                        ),
                                      ),
                                      ///////////////End OF COntextOF API DataBase,,,,,,,,,,,,,,,..........
                                    ))),
                            SizedBox(
                              height: 10.h,
                            ),
                            PaddingCustom(
                                theTop: 10,
                                theRight: 0,
                                child: InkWell(
                                  onTap: () {
                                    if (homeController.typeOfAdmin.value != 2) {
                                      homeController.aboutAccessTheAdminMessage
                                          .value = true;
                                    } else {
                                      homeController.isChooseEditTypeSubType =
                                          0;
                                      Get.to(AddNewOffers());
                                    }
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: 190.w,
                                      height: 35.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.yellowColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        "إضافة عرض جديد",
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontFamily: AppTextStyles.Almarai,
                                          fontSize: 5.sp,
                                        ),
                                      )),
                                )),
                          ]),
                    ),
                  ),
                  ///////////////End OF COntextOF  Page,,,,,,,,,,,,,,,..........
                ]),
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
                                        controller.deleteOffer(
                                            controller.idEditOffers.toString());
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
                                        onTap: () {
                                          controller.isChooseEditTEditOffers =
                                              1;
                                          Get.to(AddNewOffers());
                                        },
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
