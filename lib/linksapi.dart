import 'dart:core';

class AppLinksApi {
  static const uploadimage = "https://larra.xyz/uploadimagetest.php";

  static const path = "https://larra.xyz/php_serivecs/dashboard";
  static const getUsers =
      "https://larra.xyz/php_choc/dashboard/get_users_s.php";
  static const getMainTypes =
      "https://larra.xyz/php_choc/dashboard/get_main_types_s.php";
  static const getProducts =
      "https://larra.xyz/php_choc/dashboard/get_products_s.php";
  static const getOffers =
      "https://larra.xyz/php_choc/dashboard/get_offers_s.php";
  static const getUserOrder =
      "https://larra.xyz/php_choc/dashboard/get_orders.php";
  /////////////Add .............////////
  static const addMainType =
      "https://larra.xyz/php_choc/dashboard/add_dashboard/add_main_type.php";
  static const addProudcts =
      "https://larra.xyz/php_choc/dashboard/add_dashboard/add_products.php";
  static const addOffer =
      "https://larra.xyz/php_choc/dashboard/add_dashboard/add_offers.php";

  //////...........Delete......................///////////////////////////
  static const deleteMainType =
      "https://larra.xyz/php_choc/dashboard/delete_dashboard/delete_main_type.php";
  static const deleteProducts =
      "https://larra.xyz/php_choc/dashboard/delete_dashboard/delete_products.php";
  static const deleteOffer =
      "https://larra.xyz/php_choc/dashboard/delete_dashboard/delete_offers.php";

  static const deleteAdmin =
      "https://larra.xyz/php_choc/dashboard/delete_dashboard/delete_admin.php";
  static const deleteServiceMan =
      "${path}/delete_dashboard/delete_service_man.php";

  /////////////Admin...............////////////
  static const getAdminsData =
      "https://larra.xyz/php_choc/dashboard/get_admin.php";
  static const LoginAdmin =
      "https://larra.xyz/php_choc/dashboard/login_admin.php";
  static const addAdminNew =
      "https://larra.xyz/php_choc/dashboard/add_dashboard/add_admin.php";

/////////////////////Notice..........////////

  static const getNoticeData =
      "https://larra.xyz/php_choc/dashboard/get_notice.php";
  static const addNotice =
      "https://larra.xyz/php_choc/dashboard/add_dashboard/add_notice.php";
  static const getNoticeDataServices = "${path}/get_notice_man_services.php";

  ///////////////////////////////////Services Man
  static const getDataSerivcesMan = "${path}/get_services_man.php";
  static const addDataSerivcesMan =
      "${path}/add_dashboard/add_services_man.php";
  static const EditWallte = "${path}/edit_dashboard/edit_wallte.php";
  static const EditRatio = "${path}/edit_dashboard/edit_ratio.php";
////////////////Edit.....................///////////

  static const EditMainType =
      "https://larra.xyz/php_choc/dashboard/edit_dashboard/edit_main_type.php";
  static const EditProducts =
      "https://larra.xyz/php_choc/dashboard/edit_dashboard/edit_products.php";

  static const EditOffers =
      "https://larra.xyz/php_choc/dashboard/edit_dashboard/edit_offers.php";

  static const EditServiceMan = "${path}/edit_dashboard/edit_services_man.php";

  static const EditTheAdmin =
      "https://larra.xyz/php_choc/dashboard/edit_dashboard/edit_admin.php";

  ///////////////////////////////

  static const imageNew = "https://larra.xyz/image_testing/image_upload.php";
  static const getInv = "https://larra.xyz/php_serivecs/dashboard/get_inv.php";
/////////////////////////////////////############# Searching.................../////////////////////////
  static const searchingAdminName =
      "https://larra.xyz/php_choc/dashboard/searching_admin.php";
  static const searchingUserName =
      "https://larra.xyz/php_choc/dashboard/searching_name_user.php";
  static const searchingMainTypeName =
      "https://larra.xyz/php_choc/dashboard/searching_main_type.php";
  static const searchingProductsName =
      "https://larra.xyz/php_choc/dashboard/searching_products.php";
  static const searchingOffer =
      "https://larra.xyz/php_choc/dashboard/searching_offers.php";
////////////////////////////////////
  static const searchingOrderNumber = "${path}/searching_id_order.php";
  static const searchingNameServiceMan =
      "${path}/searching_name_service_man.php";
}
