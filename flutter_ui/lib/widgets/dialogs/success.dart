import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDialog extends StatefulWidget {
  VoidCallback press;
  SuccessDialog({required this.press, super.key});

  @override
  State<SuccessDialog> createState() => _SuccessDialogState();
}

class _SuccessDialogState extends State<SuccessDialog> {
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
            border: Border.all(
                color: const Color.fromARGB(255, 0, 252, 55), width: 5),
            borderRadius: const BorderRadius.all(Radius.circular(20.0))),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SUCCESS',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 27, 128, 30),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Move to ProfilePage!',
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
