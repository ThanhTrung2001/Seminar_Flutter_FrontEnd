import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Row(
            children: [
              InkWell(
                onTap: () {
                  if (isSelected != 0) {
                    isSelected = 0;
                    Navigator.of(context).pushNamed('/profile');
                  }
                },
                child: Text(
                  'OverView',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 25.sp,
                      color: (isSelected != 0) ? Colors.blue : Colors.white),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              InkWell(
                onTap: () {
                  if (isSelected != 1) {
                    Navigator.of(context).pushNamed('/cccd');
                    isSelected = 1;
                  }
                },
                child: Text(
                  'CCCD',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 25.sp,
                      color: (isSelected != 1) ? Colors.blue : Colors.white),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              InkWell(
                onTap: () {
                  if (isSelected != 2) {
                    Navigator.of(context).pushNamed('/gplx');
                    isSelected = 2;
                  }
                },
                child: Text(
                  'GPLX',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 25.sp,
                      color: (isSelected != 2) ? Colors.blue : Colors.white),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              InkWell(
                onTap: () {
                  if (isSelected != 3) {
                    Navigator.of(context).pushNamed('/bhyt');
                    isSelected = 3;
                  }
                },
                child: Text(
                  'BHYT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 25.sp,
                      color: (isSelected != 3) ? Colors.blue : Colors.white),
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Rubik',
                      fontSize: 25.sp,
                      color: Colors.blue),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
