// ignore_for_file: unnecessary_new, prefer_collection_literals, unnecessary_this, file_names

class LoginResponseModel {
  String? accessToken;
  String? refreshToken;
  bool? status;
  User? user;

  LoginResponseModel(
      {this.accessToken, this.refreshToken, this.status, this.user});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    status = json['status'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this. accessToken;
    data['refresh_token'] = this . refreshToken;
    data['status'] =this . status;
    if ( this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? email;
  List<dynamic>? favoriteProducts;
  int? id;
  String? imagePath;
  String? name;
  String? phone;

  User(
      {this.email,
      this.favoriteProducts,
      this.id,
      this.imagePath,
      this.name,
      this.phone});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    if (json['favorite_products'] != null) {
      favoriteProducts = List<dynamic>.from(json['favorite_products']);
    }
    id = json['id'];
    imagePath = json['image_path'];
    name = json['name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    if (favoriteProducts != null) {
      data['favorite_products'] = favoriteProducts;
    }
    data['id'] = id;
    data['image_path'] = imagePath;
    data['name'] = name;
    data['phone'] = phone;
    return data;
  }
}
