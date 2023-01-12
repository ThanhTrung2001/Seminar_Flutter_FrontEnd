import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/services/api.dart';
import 'package:flutter_ui/widgets/navbar.dart';
import 'package:flutter_ui/models/image.dart' as i;

class GPLXPage extends StatefulWidget {
  const GPLXPage({super.key});

  @override
  State<GPLXPage> createState() => _GPLXPageState();
}

class _GPLXPageState extends State<GPLXPage> {
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
            padding: EdgeInsets.all(80.w),
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
                              i.blxFr!.imageUrl.toString() != null
                                  ? i.blxFr!.imageUrl.toString()
                                  : imgLink,
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
                              i.blxB!.imageUrl.toString() != null
                                  ? i.blxB!.imageUrl.toString()
                                  : imgLink,
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
                          'ID Card  :',
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
                          'Address  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Place of Origin  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Date of Issue  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Class Type  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Expire in  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Beginning date  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Classify  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Grantor's Name  :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // SizedBox(
                        //   width: 80.w,
                        // ),
                        Text(
                          "Grantor's Title :  ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          gplx.idCard as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.fullName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.dateOfBirth as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.nationality as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.address as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.placeOfIssue as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.dateOfIssue as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.classType as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.expires as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.beginningDate as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.classificationOfMotorVehicles as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.grantorName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          gplx.titleOfGrantor as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
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
