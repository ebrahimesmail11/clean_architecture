import 'package:clean_architecture/features/user/domain/entities/address_entitiy.dart';

class UserEntitiy {
  UserEntitiy(
      {required this.name,
      required this.email,
      required this.phone,
      required this.address});
  factory UserEntitiy.fromJson(Map<String, dynamic> json) {
    return UserEntitiy(
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        address: json['address']);
  }
  final String name;
  final String email;
  final String phone;
  final Address address;
}


