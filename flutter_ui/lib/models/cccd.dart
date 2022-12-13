import 'package:flutter_ui/models/gender.dart';

class CCCD {
  String id;
  String cccdID;
  String fullName;
  DateTime doB;
  Gender sex;
  String nationality;
  String placeOfOrigin;
  String placeOfResidence;
  DateTime doExpire;
  String personalIdentification;
  DateTime issueDate;
  String grantorName;
  String titleOfgrantor;
  String userId;
  CCCD(
      this.id,
      this.cccdID,
      this.fullName,
      this.doB,
      this.sex,
      this.nationality,
      this.placeOfOrigin,
      this.placeOfResidence,
      this.doExpire,
      this.personalIdentification,
      this.issueDate,
      this.grantorName,
      this.titleOfgrantor,
      this.userId);
}
