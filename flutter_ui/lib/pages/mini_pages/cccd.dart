import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/services/api.dart';
import 'package:flutter_ui/widgets/navbar.dart';
import 'package:flutter_ui/models/image.dart' as i;

class CCCDPage extends StatefulWidget {
  const CCCDPage({super.key});

  @override
  State<CCCDPage> createState() => _CCCDPageState();
}

class _CCCDPageState extends State<CCCDPage> {
  @override
  void initState() {
    getCCCDInformationByToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: NavBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
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
            padding: EdgeInsets.all(100.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 350.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.network(
                              i.cccdFr.imageUrl.toString(),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      width: 350.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.network(
                              i.cccdB.imageUrl.toString(),
                              fit: BoxFit.fill)),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'CCCD  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'FullName  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'DoB  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Gender  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Nationality  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Origin Place  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Residence Place  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Expire Date  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Identification  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Issue Date  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Grantor Name  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Grantor's Title  :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 80.w,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          cccd.cccdId as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.fullName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.dateOfBirth as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          (cccd.sex == '1') ? 'Male' : 'Female',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.nationality as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.placeOfOrigin as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.placeOfResidence as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.dateOfExpiry as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.personalIdentification as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.issueDate as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.grantorName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          cccd.titleOfGrantor as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
