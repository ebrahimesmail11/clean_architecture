import 'package:clean_architecture/core/databases/api/api_result.dart';
import 'package:clean_architecture/core/params/params.dart';
import 'package:clean_architecture/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/features/user/domain/repositories/user_repositories.dart';

class GetUser {
  GetUser({required this.userRepositories});
  final UserRepositories userRepositories;
  Future<ApiResult<UserEntity>> call({required UserParams userParams}) {
    return userRepositories.getUser(
      userParams: userParams,
    );
  }
}
