import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/services/api.dart';
import 'package:flutter_ui/widgets/navbar.dart';
import 'package:flutter_ui/models/image.dart' as i;

class BHYTPage extends StatefulWidget {
  const BHYTPage({super.key});

  @override
  State<BHYTPage> createState() => _BHYTPageState();
}

class _BHYTPageState extends State<BHYTPage> {
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
                              i.bhytFr!.imageUrl.toString() != null
                                  ? i.bhytFr!.imageUrl.toString()
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
                              i.bhytB!.imageUrl.toString() != null
                                  ? i.bhytB!.imageUrl.toString()
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
                          'ID Card :',
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
                          'Area Code  :',
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
                          'First BHYT Provider  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'BHYTCode  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Valid Date  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Five years date  :',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Issue date  :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Grantor's name  :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Grantorr's Title :",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        // SizedBox(
                        //   width: 80.w,
                        // ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          bhyt.idCard as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.fullName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.dateOfBirth as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          (bhyt.sex == "1") ? "Male" : "Female",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.nationality as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.areaCode as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.address as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.firstInsuranceHealthCareProvider as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.insuranceHealthCareCode as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.validDate as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.fiveYearsDate as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.issueDate as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.grantorName as String,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          bhyt.titleOfGrantor as String,
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
