import 'package:education_manage/model/role_model.dart';
import 'package:education_manage/model/user_model.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

final box = Hive.box('EDUCATION_MANAGE_APP');

Future<dynamic> openBox() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(RoleModelAdapter());
  return Hive.openBox('EDUCATION_MANAGE_APP');
}

UserModel? getUserModel() {
  return box.get('k_user_model');
}

saveUserModel({UserModel? model}) {
  box.put('k_user_model', model);
}

void removeAllData() {
  box.clear();
}