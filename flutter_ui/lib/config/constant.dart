import 'package:flutter/material.dart';

const double percent = 1920 / 1080;

int isSelected = 0;

double returnPresentScreen(Size size) {
  return size.width / size.height;
}

double getPercent(Size size) {
  return returnPresentScreen(size) / percent;
}

String UserId = '';

//CCCD
String CCCDID = '12312';
String cccdID = '1212312312312';
String fullName = 'Thanh Trung';
String DoB = '10/10/2010';
String gender = 'Male';
String Nationality = 'Viet Nam';
String PlaceOfOrigin = 'Lam Dong';
String PlaceOfResidence = 'Phu Yen';
String DoExpire = '10/10/2010';
String PersonalIdentification = 'Not ruoi';
String IssueDate = '10/10/2010';
String GrantorName = 'abc';
String TitleOfGrantor = 'abc';

//ip
var infoIP = '192.168.137.1';
// /api/User/Login

var imageIP = 'localhost:80/image';

String? token;

