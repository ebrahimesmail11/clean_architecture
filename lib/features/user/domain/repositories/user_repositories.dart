import 'package:clean_architecture/core/databases/api/api_result.dart';
import 'package:clean_architecture/core/params/params.dart';
import 'package:clean_architecture/features/user/domain/entities/user_entity.dart';

abstract class UserRepositories {
  Future<ApiResult<UserEntity>> getUser({required UserParams userParams });
}
