import 'package:finst/database/user.dart';
import 'package:finst/model/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  Rx<UserModel> userDb = Rx<UserModel>(UserModel());
  UserModel get user => userDb.value;

  @override
  void onReady() {
    userDb.bindStream(UserDb.stream());
  }
}
