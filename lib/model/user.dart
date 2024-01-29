import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? documentId;
  int? hourlyRate;
  int? hoursDay;

  UserModel({
    this.hourlyRate,
    this.hoursDay,
  });

  UserModel.fromDocumentSnapshot({required DocumentSnapshot documentSnapshot}) {
    documentId = documentSnapshot.id;
    hourlyRate = documentSnapshot["hourlyRate"];
    hoursDay = documentSnapshot["hoursDay"];
  }

  Map<String, dynamic> toJson() =>
      {'hourlyRate': hourlyRate, 'hoursDay': hoursDay};
}
