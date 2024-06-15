import 'package:get/get.dart';

class Products {
  var id;
  var idType;
  var name;
  var nameEn;
  var img;
  var about;
  var aboutEn;
  var price;

  Products(
      {required this.id,
      required this.idType,
      required this.name,
      required this.nameEn,
      required this.img,
      required this.about,
      required this.aboutEn,
      required this.price});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['prooduct_id'] ?? 0,
      idType: json['prooduct_type'] ?? 0,
      name: json['prooduct_name_ar'] ?? 'Default Title',
      nameEn: json['prooduct_name_en'] ?? 'Default Title',
      img: json['products_image'] ?? 'Default image',
      about: json['prooduct_description_ar'] ?? 'Default about',
      aboutEn: json['prooduct_description_en'] ?? 'Default about',
      price: json['products_price'] ?? 00,
    );
  }
}
