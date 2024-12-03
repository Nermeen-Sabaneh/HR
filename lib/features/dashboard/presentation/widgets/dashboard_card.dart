import 'package:dash_card/gen/fonts.gen.dart';
import 'package:dash_card/features/dashboard/presentation/widgets/small_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DashboardCard extends StatelessWidget {
  String cardText;

  String cardImagePath;
  DashboardCard(this.cardText, this.cardImagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFE2E2E2),
            spreadRadius: 2.sp,
            blurRadius: 5.sp,
            offset: Offset(3.sp, 3.sp),
          ),
        ],
      ),
      child: Column(
        children: [
          SmallContainer(0xFFFFF2F2, cardImagePath),
          10.verticalSpace,
          SizedBox(
            width: 88.w,
            child: Text(
              cardText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF45484D),
                overflow: TextOverflow.clip,
                fontFamily: FontFamily.roboto,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
