import 'dart:async';
import 'dart:developer';

import 'package:clean_architecture/core/connection/network_info.dart';
import 'package:clean_architecture/core/params/params.dart';
import 'package:clean_architecture/features/user/data/models/user_model.dart';

import 'package:clean_architecture/features/user/domain/usecases/get_user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  UserController(this.getUserUseCase);

  final GetUser getUserUseCase;
  final NetworkInfo networkInfo = Get.find<NetworkInfo>();
  bool isLoading = true;
  UserModel? user;
  var errorMessage = Rxn<String>();
  var connectionState = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getUser(1);
  }

  Future<void> getUser(int id) async {
    isLoading=true;

    // Assuming GetUserUseCase internally calls the repository
    final result =
        await getUserUseCase.call(userParams: UserParams(id: id.toString()));
    result.when(success: (userData) {
      log('userModel:::::::$userData');
      user = userData;
      isLoading=false;
    }, error: (failure) {
      isLoading=false;
      errorMessage.value = failure.apiErrorModel.errorMessage;
    });
    update();
  }
  
}
