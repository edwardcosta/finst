import 'package:finst/database/work_days.dart';
import 'package:finst/model/work_days.dart';
import 'package:get/get.dart';

class WorkDaysController extends GetxController {
  Rx<List<WorkDayModel>> workDaysList = Rx<List<WorkDayModel>>([]);
  List<WorkDayModel> get workDays => workDaysList.value;

  @override
  void onReady() {
    workDaysList.bindStream(WorkDayDb.stream());
  }
}
