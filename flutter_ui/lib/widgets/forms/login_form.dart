import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/widgets/dialogs/error.dart';
import 'package:flutter_ui/widgets/dialogs/success.dart';

// ignore: must_be_immutable
class LoginForm extends StatefulWidget {
  VoidCallback submit;
  TextEditingController identifierController;
  LoginForm(
      {required this.identifierController, required this.submit, super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.5,
      height: size.height * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 0, 0, 0),
              spreadRadius: 5,
              blurRadius: 4,
              offset: Offset(0, 3), // Shadow position
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
              'CHÀO MỪNG',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36.sp),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Nhập số căn cước công dân của bạn: ",
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 24.sp),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              alignment: Alignment.center,
              height: size.height * 0.062,
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.black,
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
              height: 20.h,
            ),
            TextButton(
              onPressed: widget.submit,
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.black)))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
