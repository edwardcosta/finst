import 'package:cloud_firestore/cloud_firestore.dart';

class WorkDayModel {
  String? id;
  late List<WorkingTimeModel> workingTime;
  late int workSum;
  late int year;
  late int month;

  WorkDayModel(
      {required this.workingTime,
      required this.workSum,
      required this.year,
      required this.month});

  WorkDayModel.fromDocumentSnapshot(
      {required DocumentSnapshot documentSnapshot}) {
    id = documentSnapshot.id;
    workSum = documentSnapshot["workSum"];
    year = documentSnapshot["year"];
    month = documentSnapshot["month"];
    workingTime = [];
    for (var workingTimeItem in documentSnapshot["workingTime"]) {
      final workinTimeModel = WorkingTimeModel(
          start: workingTimeItem["start"],
          end: workingTimeItem["end"],
          isOpen: workingTimeItem["isOpen"]);
      workingTime.add(workinTimeModel);
    }
  }
}

class WorkingTimeModel {
  Timestamp start;
  Timestamp? end;
  bool isOpen;

  WorkingTimeModel({
    required this.start,
    this.end,
    required this.isOpen,
  });
}
