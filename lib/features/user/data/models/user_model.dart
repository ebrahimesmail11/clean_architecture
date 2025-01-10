import 'package:clean_architecture/core/databases/api/end_points.dart';
import 'package:clean_architecture/features/user/data/models/sub_models/address_model.dart';
import 'package:clean_architecture/features/user/data/models/sub_models/company_model.dart';
import 'package:clean_architecture/features/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.address,
    required this.username,
    required this.id,
    required this.website,
    required this.company,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json[ApiKey.name],
      email: json[ApiKey.email],
      phone: json[ApiKey.phone],
      address: AddressModel.fromJson(json[ApiKey.address]),
      id: json[ApiKey.id],
      username: json[ApiKey.username],
      company: CompanyModel.fromJson(
        json[ApiKey.company],
      ),
      website: json[ApiKey.website],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.name: name,
      ApiKey.email: email,
      ApiKey.phone: phone,
      ApiKey.username: username,
      ApiKey.website: website,
      ApiKey.company: company,
      ApiKey.address: address,
    };
  }

  final String username;
  final int id;
  final String website;
  final CompanyModel company;
}
