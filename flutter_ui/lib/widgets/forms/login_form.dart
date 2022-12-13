import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/widgets/dialogs/error.dart';
import 'package:flutter_ui/widgets/dialogs/success.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  VoidCallback submit;
  TextEditingController identifierController;
  TextEditingController passController;
  bool hidePass = true;
  VoidCallback showPasswordAction;
  LoginForm(
      {required this.identifierController,
      required this.passController,
      required this.hidePass,
      required this.showPasswordAction,
      required this.submit,
      super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      height: (size.width > 1000) ? 700.h : 430.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              spreadRadius: 5,
              blurRadius: 1,
              offset: Offset(12, 12), // Shadow position
            ),
          ],
          color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 80.h,
            // ),
            Text(
              'WELCOME',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik',
                  fontSize: 36.sp),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Nhập số căn cước công dân của bạn: ",
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontFamily: 'Pacifico',
                  fontSize: 24.sp),
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.062,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: Color.fromARGB(0, 155, 155, 155),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 170, 170, 170),
                    width: 2,
                  )),
              child: TextField(
                textAlign: TextAlign.center,
                maxLines: 1,
                controller: widget.identifierController,
                style: TextStyle(
                  fontSize: 32.sp,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'CCCD',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 30.sp),
                  isCollapsed: true,
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.062,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: Color.fromARGB(0, 155, 155, 155),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Color.fromARGB(255, 170, 170, 170),
                    width: 2,
                  )),
              child: TextField(
                obscureText: widget.hidePass,
                textAlign: TextAlign.center,
                maxLines: 1,
                controller: widget.passController,
                style: TextStyle(
                  fontSize: 32.sp,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 30.sp),
                  isCollapsed: true,
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            TextButton(
              onPressed: widget.submit,
              onHover: (value) {
                setState(() {
                  isHover = !isHover;
                });
              },
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shadowColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 0, 0, 0)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      (isHover == false)
                          ? Color.fromARGB(255, 105, 185, 250)
                          : Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.black)))),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.125, vertical: 20.h),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rubik',
                    color: (isHover == false) ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
