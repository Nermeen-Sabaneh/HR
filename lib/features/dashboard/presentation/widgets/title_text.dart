import 'package:dash_card/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class TitleText extends StatelessWidget {
  String titleText;

  TitleText(this.titleText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        color: const Color(0xFF293646),
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
        fontFamily: FontFamily.roboto,
      ),
    );
  }
}
