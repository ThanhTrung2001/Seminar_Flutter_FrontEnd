class BHYT {
  String? idCard;
  String? fullName;
  String? dateOfBirth;
  int? sex;
  String? nationality;
  String? areaCode;
  String? address;
  String? firstInsuranceHealthCareProvider;
  String? insuranceHealthCareCode;
  String? validDate;
  String? fiveYearsDate;
  String? issueDate;
  String? grantorName;
  String? titleOfGrantor;

  BHYT(
      {this.idCard,
      this.fullName,
      this.dateOfBirth,
      this.sex,
      this.nationality,
      this.areaCode,
      this.address,
      this.firstInsuranceHealthCareProvider,
      this.insuranceHealthCareCode,
      this.validDate,
      this.fiveYearsDate,
      this.issueDate,
      this.grantorName,
      this.titleOfGrantor});

  BHYT.fromJson(Map<String, dynamic> json) {
    idCard = json['idCard'];
    fullName = json['fullName'];
    dateOfBirth = json['dateOfBirth'];
    sex = json['sex'];
    nationality = json['nationality'];
    areaCode = json['areaCode'];
    address = json['address'];
    firstInsuranceHealthCareProvider = json['firstInsuranceHealthCareProvider'];
    insuranceHealthCareCode = json['insuranceHealthCareCode'];
    validDate = json['validDate'];
    fiveYearsDate = json['fiveYearsDate'];
    issueDate = json['issueDate'];
    grantorName = json['grantorName'];
    titleOfGrantor = json['titleOfGrantor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCard'] = this.idCard;
    data['fullName'] = this.fullName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['sex'] = this.sex;
    data['nationality'] = this.nationality;
    data['areaCode'] = this.areaCode;
    data['address'] = this.address;
    data['firstInsuranceHealthCareProvider'] =
        this.firstInsuranceHealthCareProvider;
    data['insuranceHealthCareCode'] = this.insuranceHealthCareCode;
    data['validDate'] = this.validDate;
    data['fiveYearsDate'] = this.fiveYearsDate;
    data['issueDate'] = this.issueDate;
    data['grantorName'] = this.grantorName;
    data['titleOfGrantor'] = this.titleOfGrantor;
    return data;
  }
}
