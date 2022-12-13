import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorDialog extends StatefulWidget {
  VoidCallback press;
  ErrorDialog({required this.press, super.key});

  @override
  State<ErrorDialog> createState() => _ErrorDialogState();
}

class _ErrorDialogState extends State<ErrorDialog> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 3,
      backgroundColor: Colors.black.withOpacity(0.3),
      child: Container(
        height: 200.h,
        width: 500.w,
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 216, 56, 56),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(5, 5), // Shadow position
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ERROR',
                style: TextStyle(
                  fontSize: 50.sp,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 39, 39),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Something wrong!!!',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
