import "dart:convert";
import 'package:flutter/cupertino.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/models/bhyt.dart';
import 'package:flutter_ui/models/cccd.dart';
import 'package:flutter_ui/models/gplx.dart';
import 'package:flutter_ui/models/token.dart';
import 'package:http/http.dart' as http;

var status = 0;
CCCD cccd = new CCCD();
GPLX gplx = new GPLX();
BHYT bhyt = new BHYT();
Map<String, String> headers = {
  'Content-Type': 'application/json',
};

Future<bool> submitLogin(userName, password) async {
  try {
    var response = await http.post(
        Uri.http('localhost:80', 'infomation/User/Login'),
        headers: headers,
        body: jsonEncode({"userName": userName, "password": password}));
    var checking = jsonDecode(response.body);
    print(response.statusCode);
    // print('json is  $jsonData');
    if (response.statusCode == 200) {
      status = 200;
      Token tokenGet = Token.fromJson(checking['token']);
      token = tokenGet.accessToken;
      // token = token1.token;
      print(token);
      return true;
    }
    return false;
  } on Exception catch (e) {
    print(e);
    return false;
  }
}

Future<bool> submitImage(id) async {
  try {
    var response = await http.get(Uri.http('localhost:5001', '/image/1'));
    var checking = jsonDecode(response.body);
    // print('json is  $jsonData');
    // var checking = jsonData['token'];
    if (response.statusCode == 201) {
      // token = checking['access_token'];
      print('hello');
      return true;
    }
    return false;
  } on Exception catch (e) {
    debugPrint(e.toString());
    return false;
  }
}

Future<bool> getCCCDInformationByToken() async {
  try {
    var response = await http.get(
      Uri.http(
          'localhost:80', 'infomation/Infomation/GetCitizenIdentityByToken'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    var checking = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      status = 200;
      cccd = CCCD.fromJson(checking);
      print(cccd);
    }
    return false;
  } on Exception catch (e) {
    print(e);
    return false;
  }
}

Future<bool> getGPLXInformationByToken() async {
  try {
    var response = await http.get(
      Uri.http(
          'localhost:80', 'infomation/Infomation/GetDrivingLicenseByToken'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    var checking = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      status = 200;
      gplx = GPLX.fromJson(checking);
    }
    return false;
  } on Exception catch (e) {
    print(e);
    return false;
  }
}

Future<bool> getBHYTInformationByToken() async {
  try {
    var response = await http.get(
      Uri.http(
          'localhost:80', 'infomation/Infomation/GetHealthInsuranceByToken'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    var checking = jsonDecode(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      status = 200;
      bhyt = BHYT.fromJson(checking);
    }
    return false;
  } on Exception catch (e) {
    print(e);
    return false;
  }
}
