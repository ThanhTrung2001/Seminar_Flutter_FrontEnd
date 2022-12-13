import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui/config/constant.dart';
import 'package:flutter_ui/widgets/navbar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String UID = '01234567890';
  String cccd = '012345678908';
  String email = 'abc@gmail.com';
  @override
  void initState() {
    super.initState();
    isSelected = 0;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150.h,
                ),
                CircleAvatar(
                  radius: 200.w,
                  backgroundColor: Color.fromARGB(255, 157, 168, 57),
                  child: Text('Avatar'),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'UID : ${UID}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'CCCD  :     ${UID}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          fontFamily: 'Pacifico',
                          color: Colors.white),
                    ),
                    Text(
                      'Email  :     ${email}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp,
                          fontFamily: 'Pacifico',
                          color: Colors.white),
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
