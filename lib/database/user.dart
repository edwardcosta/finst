import 'package:finst/constants.dart';
import 'package:finst/model/user.dart';

class UserDb {
  static update(UserModel userModel) async {
    await firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .set(userModel.toJson());
  }

  static Stream<UserModel> stream() {
    return firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .snapshots()
        .map(
          (event) => UserModel.fromDocumentSnapshot(documentSnapshot: event),
        );
  }

  static delete(String documentId) {
    firebaseFirestore.collection('users').doc(auth.currentUser!.uid).delete();
  }
}
