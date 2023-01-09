class CCCD {
  String? cccdId;
  String? fullName;
  String? dateOfBirth;
  int? sex;
  String? nationality;
  String? placeOfOrigin;
  String? placeOfResidence;
  String? dateOfExpiry;
  String? personalIdentification;
  String? issueDate;
  String? grantorName;
  String? titleOfGrantor;

  CCCD(
      {this.cccdId,
      this.fullName,
      this.dateOfBirth,
      this.sex,
      this.nationality,
      this.placeOfOrigin,
      this.placeOfResidence,
      this.dateOfExpiry,
      this.personalIdentification,
      this.issueDate,
      this.grantorName,
      this.titleOfGrantor});

  CCCD.fromJson(Map<String, dynamic> json) {
    cccdId = json['cccdId'];
    fullName = json['fullName'];
    dateOfBirth = json['dateOfBirth'];
    sex = json['sex'];
    nationality = json['nationality'];
    placeOfOrigin = json['placeOfOrigin'];
    placeOfResidence = json['placeOfResidence'];
    dateOfExpiry = json['dateOfExpiry'];
    personalIdentification = json['personalIdentification'];
    issueDate = json['issueDate'];
    grantorName = json['grantorName'];
    titleOfGrantor = json['titleOfGrantor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cccdId'] = this.cccdId;
    data['fullName'] = this.fullName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['sex'] = this.sex;
    data['nationality'] = this.nationality;
    data['placeOfOrigin'] = this.placeOfOrigin;
    data['placeOfResidence'] = this.placeOfResidence;
    data['dateOfExpiry'] = this.dateOfExpiry;
    data['personalIdentification'] = this.personalIdentification;
    data['issueDate'] = this.issueDate;
    data['grantorName'] = this.grantorName;
    data['titleOfGrantor'] = this.titleOfGrantor;
    return data;
  }
}
