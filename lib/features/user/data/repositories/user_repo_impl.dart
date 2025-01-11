import 'package:clean_architecture/core/connection/network_info.dart';
import 'package:clean_architecture/core/databases/api/api_result.dart';
import 'package:clean_architecture/core/errors/api_error_handler.dart';
import 'package:clean_architecture/core/params/params.dart';
import 'package:clean_architecture/features/user/data/datasources/user_local_data_source.dart';
import 'package:clean_architecture/features/user/data/datasources/user_remote_data_source.dart';
import 'package:clean_architecture/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture/features/user/domain/repositories/user_repositories.dart';

class UserRepoImpl extends UserRepositories {
  UserRepoImpl(
      {required this.networkInfo,
      required this.remote,
      required this.localDataSource});
  final NetworkInfo networkInfo;
  final UserRemoteDataSource remote;
  final UserLocalDataSource localDataSource;
  @override
  Future<ApiResult<UserEntity>> getUser(
      {required UserParams userParams}) async {
    if (await networkInfo.isConnected!) {
      try {
        final result = await remote.getUser(params: userParams);
        localDataSource.cacheUser(result);
        return ApiResult.success(result);
      } on Exception catch (e) {
        return ApiResult.error(
          ErrorHandler.handle(e),
        );
      }
    } else {
      try {
        final cachedResult = await localDataSource.getLastUser();
        return ApiResult.success(cachedResult);
      } on Exception catch (e) {
        return ApiResult.error(
          ErrorHandler.handle(e),
        );
      }
    }
  }
}
