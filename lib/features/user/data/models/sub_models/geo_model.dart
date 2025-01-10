import 'package:clean_architecture/core/databases/api/end_points.dart';
import 'package:clean_architecture/features/user/domain/entities/geo_entity.dart';

class GeoModel extends Geo {
  GeoModel({
    required super.lng,
    required super.lat,
  });
  factory GeoModel.fromJson(Map<String, dynamic> json) {
    return GeoModel(
      lng: json[ApiKey.lng],
      lat: json[ApiKey.lat],
    );
  }
  Map<String, dynamic> toJson() {
    return {'lng': lng, 'lat': lat};
  }
}
