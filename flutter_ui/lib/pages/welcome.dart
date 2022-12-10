import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/widgets/dialogs/success.dart';
import 'package:flutter_ui/widgets/forms/login_form.dart';

import '../widgets/dialogs/error.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hover = false;
  final identifierController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   Future.delayed(
  //     const Duration(seconds: 3),
  //     () {
  //       showDialog(
  //           context: context,
  //           builder: (_) {
  //             // return SuccessDialog(press: () {});
  //             return ErrorDialog(press: () {});
  //           });
  //     },
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 200.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 15.h),
                child: Row(
                  children: [
                    Icon(Icons.person_add_alt_1_rounded,
                        size: 70 * getPercent(size), color: Colors.white),
                    SizedBox(
                      width: 15.w,
                    ),
                    Text(
                      "Citizen's Viewer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.sp,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp,
                          color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        //decoration
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 200.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginForm(
                    identifierController: identifierController,
                    submit: () {
                      Future.delayed(
                        const Duration(seconds: 3),
                        () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return SuccessDialog(press: () {});
                                // return ErrorDialog(press: () {});
                              });
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
