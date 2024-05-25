import 'package:apnademandseller/utils/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/common/image_string.dart';
import '../../../utils/common/reusable_btn.dart';
import '../auth/login_screen.dart';

class SelecteOption extends StatelessWidget {
  const SelecteOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            logo,
            height: 100,
          ),
          Container(
              height: height - 350,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/wedding-planner-concept-illustration_114360-2580.jpg?t=st=1716629819~exp=1716633419~hmac=382729d27eac2290119ef4006f103c8a0d0d5516ed1ef7b60cbe8dbf54abe9fa&w=740'),
                    fit: BoxFit.fill),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BtnFrave(
              text: "Ecommerce Store",
              color: kWhite,
              textColor: kDark,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: BtnFrave(
              text: "Event Place",
              color: kWhite,
              textColor: kDark,
              onPressed: () => Get.to(LoginScreen()),
            ),

          ),
        ],
      ),
    );
  }
}
