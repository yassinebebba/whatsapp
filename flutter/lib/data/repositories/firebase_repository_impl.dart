import 'package:cross_platform/domain/entities/user_entity.dart';
import 'package:cross_platform/domain/repository/firebase_repository.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  @override
  Future<void> getCreateCurrentUser(UserEntity user) {
    // TODO: implement getCreateCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<String> getCurrentUId() {
    // TODO: implement getCurrentUId
    throw UnimplementedError();
  }

  @override
  Future<bool> isLogged() {
    // TODO: implement isLogged
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<void> logWithPhoneNumber(String smsPinCode) {
    // TODO: implement logWithPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<void> verifyPhoneNumber(String phoneNUmber) {
    // TODO: implement verifyPhoneNumber
    throw UnimplementedError();
  }
}
