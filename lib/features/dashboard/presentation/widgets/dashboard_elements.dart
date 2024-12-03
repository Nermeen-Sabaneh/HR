import 'package:dash_card/features/dashboard/presentation/widgets/dashboard_card.dart';
import 'package:dash_card/gen/assets.gen.dart';

import 'package:dash_card/features/dashboard/presentation/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardElements extends StatelessWidget {
  final String title;

  const DashboardElements(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        35.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TitleText(title),
            TextButton.icon(
              style: const ButtonStyle(
                padding: WidgetStatePropertyAll(EdgeInsets.zero),
              ),
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.tablerPowerSvg),
              label: Text(
                'LOGOUT',
                style: TextStyle(
                  color: const Color(0xFFCA282C),
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        8.verticalSpace,
        SizedBox(
          height: 650.w,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0.w),
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0.w,
              mainAxisSpacing: 16.0.w,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Card Clicked'),
                          content: const Text('You clicked on the card!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: DashboardCard('Leave Request', Assets.icons.calendar),
                ),
                DashboardCard('Leave Request', Assets.icons.calendar),
                DashboardCard('Leave Approval', Assets.icons.calendar),
                DashboardCard('New Request', Assets.icons.calendar),
                DashboardCard('Leave Approval', Assets.icons.calendar),
                DashboardCard('New Request', Assets.icons.calendar),
                DashboardCard('Leave Approval', Assets.icons.calendar),
                DashboardCard('New Request', Assets.icons.calendar),
                DashboardCard('Leave Approval', Assets.icons.calendar),
                DashboardCard('New Request', Assets.icons.calendar),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
