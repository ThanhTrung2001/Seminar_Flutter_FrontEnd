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
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Color.fromARGB(255, 207, 19, 19), width: 5),
            borderRadius: const BorderRadius.all(Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ERROR',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 173, 20, 20),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Something went wrong...',
                style: TextStyle(
                  fontSize: 20.sp,
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
