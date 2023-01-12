import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/services/api.dart';
import 'package:flutter_ui/widgets/dialogs/success.dart';
import 'package:flutter_ui/widgets/forms/login_form.dart';

import '../widgets/dialogs/error.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final identifierController = TextEditingController();
  final passController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool hidePass = true;
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
        preferredSize: const Size.fromHeight(150.0),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: const AssetImage('icons/team.png'),
                      width: 100.w,
                      height: 100.w,
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CITIZEN CHECKING PAGE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.sp,
                              fontFamily: 'Rubik',
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'C  H  E  C  K  I  N  G   -   -   -  I  N  F  O  R  M  A  T  I  O  N',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                              fontFamily: 'Rubik',
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     InkWell(
              //       onTap: () {},
              //       child: Text(
              //         'Sign Up',
              //         style: TextStyle(
              //             fontWeight: FontWeight.bold,
              //             fontSize: 25.sp,
              //             color: Colors.blue),
              //       ),
              //     )
              //   ],
              // )
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
            image: AssetImage("assets/images/pikrepo.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 100.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: (size.width > 1000)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                children: [
                  (size.width > 1000)
                      ? Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CITIZEN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 80.sp,
                                    fontFamily: 'Rubik',
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                'MANAGEMENT',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 80.sp,
                                    fontFamily: 'Rubik',
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              Text(
                                'INFORMATION LOGIN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 80.sp,
                                    fontFamily: 'Rubik',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      : Container(),
                  SizedBox(
                    width: 80.w,
                  ),
                  LoginForm(
                    identifierController: identifierController,
                    passController: passController,
                    hidePass: hidePass,
                    showPasswordAction: () {
                      setState(() {
                        hidePass = !hidePass;
                      });
                    },
                    submit: () async {
                      print(identifierController.text);
                      print(passController.text);
                      if (await submitLogin(
                              identifierController.text, passController.text) ==
                          true) {
                        // getCCCDInformationByToken();
                        await getCCCDInformationByToken();
                        await getBHYTInformationByToken();
                        await getGPLXInformationByToken();
                        await submitGetAllImage();
                        showDialog(
                            context: context,
                            builder: (_) {
                              return SuccessDialog(press: () {});
                              // return ErrorDialog(press: () {});
                            });
                      } else {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return ErrorDialog(press: () {});
                              // return ErrorDialog(press: () {});
                            });
                      }
                      // submitGetAllImage();
                      // submitImage(1);
                      // submitLogin(
                      //     identifierController.text, passController.text);

                      // Future.delayed(
                      //   const Duration(seconds: 3),
                      //   () {
                      //     showDialog(
                      //         context: context,
                      //         builder: (_) {
                      //           return SuccessDialog(press: () {});
                      //           // return ErrorDialog(press: () {});
                      //         });
                      //   },
                      // );
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
