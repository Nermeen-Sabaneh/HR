import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class SmallContainer extends StatelessWidget {
  int containerColor;
  String containerImagePath;
  SmallContainer(this.containerColor, this.containerImagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(15.sp),
        decoration: BoxDecoration(
          color: Color(containerColor),
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: SvgPicture.asset(
          containerImagePath,
        ),
      ),
    );
  }
}
