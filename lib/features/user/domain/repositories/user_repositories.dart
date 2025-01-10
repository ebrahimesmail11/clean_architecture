import 'package:clean_architecture/core/databases/api/api_result.dart';
import 'package:clean_architecture/features/user/domain/entities/user_entitiy.dart';

abstract class UserRepositories {
  Future<ApiResult<UserEntitiy>> getUser();
}
