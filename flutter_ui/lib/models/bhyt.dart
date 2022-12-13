import 'package:flutter_ui/models/gender.dart';

class BHYT {
  String id;
  String fullName;
  DateTime doB, validDate, fiveYearsDate, issueDate;
  Gender sex;
  String nationality;
  String areaCode;
  String address;
  String firstInsurance;
  String insuranceCode;
  String grantorName, titleOfGrantor;
  String userId;
  BHYT(
      this.id,
      this.fullName,
      this.doB,
      this.sex,
      this.nationality,
      this.areaCode,
      this.address,
      this.firstInsurance,
      this.insuranceCode,
      this.validDate,
      this.fiveYearsDate,
      this.issueDate,
      this.grantorName,
      this.titleOfGrantor,
      this.userId);
}
