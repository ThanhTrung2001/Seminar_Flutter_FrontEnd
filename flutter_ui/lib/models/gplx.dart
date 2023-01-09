class GPLX {
  String? idCard;
  String? fullName;
  String? dateOfBirth;
  String? nationality;
  String? address;
  String? placeOfIssue;
  String? dateOfIssue;
  String? classType;
  String? expires;
  String? beginningDate;
  String? classificationOfMotorVehicles;
  String? grantorName;
  String? titleOfGrantor;

  GPLX(
      {this.idCard,
      this.fullName,
      this.dateOfBirth,
      this.nationality,
      this.address,
      this.placeOfIssue,
      this.dateOfIssue,
      this.classType,
      this.expires,
      this.beginningDate,
      this.classificationOfMotorVehicles,
      this.grantorName,
      this.titleOfGrantor});

  GPLX.fromJson(Map<String, dynamic> json) {
    idCard = json['idCard'];
    fullName = json['fullName'];
    dateOfBirth = json['dateOfBirth'];
    nationality = json['nationality'];
    address = json['address'];
    placeOfIssue = json['placeOfIssue'];
    dateOfIssue = json['dateOfIssue'];
    classType = json['class'];
    expires = json['expires'];
    beginningDate = json['beginningDate'];
    classificationOfMotorVehicles = json['classificationOfMotorVehicles'];
    grantorName = json['grantorName'];
    titleOfGrantor = json['titleOfGrantor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCard'] = this.idCard;
    data['fullName'] = this.fullName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['nationality'] = this.nationality;
    data['address'] = this.address;
    data['placeOfIssue'] = this.placeOfIssue;
    data['dateOfIssue'] = this.dateOfIssue;
    data['class'] = this.classType;
    data['expires'] = this.expires;
    data['beginningDate'] = this.beginningDate;
    data['classificationOfMotorVehicles'] = this.classificationOfMotorVehicles;
    data['grantorName'] = this.grantorName;
    data['titleOfGrantor'] = this.titleOfGrantor;
    return data;
  }
}
