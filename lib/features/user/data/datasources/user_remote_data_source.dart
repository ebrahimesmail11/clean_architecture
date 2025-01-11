import 'package:clean_architecture/core/databases/api/dio_consumer.dart';
import 'package:clean_architecture/core/databases/api/end_points.dart';
import 'package:clean_architecture/core/params/params.dart';
import 'package:clean_architecture/features/user/data/models/user_model.dart';

class UserRemoteDataSource {
  UserRemoteDataSource(this.dio);
  final DioConsumer dio;
  Future<UserModel> getUser({required UserParams params}) async {
    final response = await dio.get('${EndPoints.users}${params.id}');
    return UserModel.fromJson(response);
  }
}
