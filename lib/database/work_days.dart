import 'package:finst/constants.dart';
import 'package:finst/model/work_days.dart';

class WorkDayDb {
  static Stream<List<WorkDayModel>> stream() {
    return firebaseFirestore
        .collection('users')
        .doc(auth.currentUser!.uid)
        .collection('worDays')
        .snapshots()
        .map((query) {
      List<WorkDayModel> workDays = [];
      for (var workDay in query.docs) {
        final workDayModel =
            WorkDayModel.fromDocumentSnapshot(documentSnapshot: workDay);
        workDays.add(workDayModel);
      }
      return workDays;
    });
  }
}
