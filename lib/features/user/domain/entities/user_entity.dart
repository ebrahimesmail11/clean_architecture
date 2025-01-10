import 'package:clean_architecture/features/user/domain/entities/address_entity.dart';

class UserEntity {
  UserEntity(
      {required this.name,
      required this.email,
      required this.phone,
      required this.address});
  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
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


