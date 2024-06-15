class Admin {
  var admin_id;
  var admin_name;
  var admin_password;
  var admin_type;
  var time_order_user;
  var date_order_user;

  Admin({
    required this.admin_id,
    required this.admin_name,
    required this.admin_password,
    required this.admin_type,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      admin_id: json['admin_id'] ?? 0,
      admin_name: json['admin_name'] ?? 0,
      admin_password: json['admin_password'] ?? 0,
      admin_type: json['admin_type'] ?? 2,
    );
  }
}
