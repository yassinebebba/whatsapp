import 'package:cross_platform/domain/entities/user_entity.dart';

abstract class FirebaseRepository {
  Future<void> verifyPhoneNumber(String phoneNUmber);
  Future<void> logWithPhoneNumber(String smsPinCode);
  Future<bool> isLogged();
  Future<void> logOut();
  Future<String> getCurrentUId();
  Future<void> getCreateCurrentUser(UserEntity user);
}
