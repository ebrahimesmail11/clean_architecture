import 'dart:convert';

import 'package:clean_architecture/core/databases/cache/shared_preferences.dart';
import 'package:clean_architecture/features/user/data/models/user_model.dart';

class UserLocalDataSource {
  UserLocalDataSource({required this.sharedPref});
  final SharedPref sharedPref;
  final String key = 'CachedUser';
  cacheUser(UserModel? usercache) async {
    if (usercache != null) {
      return sharedPref.saveData(
        key: key,
        value: json.encode(
          usercache.toJson(),
        ),
      );
    } else {
      throw Exception('No Interent Connection');
    }
  }

  Future<UserModel> getLastUser() {
    final jsonString  = sharedPref.getString(key);
    if (jsonString != null) {
      return Future.value(
        UserModel.fromJson(
          json.decode(jsonString),
        ),
      );
    }else{
    throw Exception('No Interent Connection');
    }
  }
}
