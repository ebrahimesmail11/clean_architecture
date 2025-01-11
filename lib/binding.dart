import 'package:clean_architecture/core/connection/network_info.dart';
import 'package:clean_architecture/core/databases/api/dio_consumer.dart';
import 'package:clean_architecture/core/databases/cache/shared_preferences.dart';
import 'package:clean_architecture/features/user/data/datasources/user_local_data_source.dart';
import 'package:clean_architecture/features/user/data/datasources/user_remote_data_source.dart';
import 'package:clean_architecture/features/user/data/repositories/user_repo_impl.dart';
import 'package:clean_architecture/features/user/domain/repositories/user_repositories.dart';
import 'package:clean_architecture/features/user/domain/usecases/get_user.dart';
import 'package:clean_architecture/features/user/presentation/controller/user_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    // تسجيل Dio
    Get.lazyPut<Dio>(() => Dio());

    // تسجيل SharedPref
    Get.lazyPut<SharedPref>(() => SharedPref());

    // تسجيل NetworkInfo
    Get.lazyPut<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker.createInstance()),
    );

    // تسجيل ApiConsumer
    Get.lazyPut(() => DioConsumer(dio: Get.find<Dio>()));

    // تسجيل UserRemoteDataSource
    Get.lazyPut<UserRemoteDataSource>(
        () => UserRemoteDataSource(Get.find<DioConsumer>()));

    // تسجيل UserLocalDataSource
    Get.lazyPut<UserLocalDataSource>(
        () => UserLocalDataSource(sharedPref: Get.find<SharedPref>()));

    // تسجيل UserRepositories
    Get.lazyPut<UserRepositories>(() => UserRepoImpl(
          networkInfo: Get.find<NetworkInfo>(),
          remote: Get.find<UserRemoteDataSource>(),
          localDataSource: Get.find<UserLocalDataSource>(),
        ));

    // تسجيل GetUser
    Get.lazyPut(() => GetUser(userRepositories: Get.find<UserRepositories>()));

    // تسجيل UserController
    Get.lazyPut(() => UserController(Get.find<GetUser>()));
  }
}
