import 'package:dash_card/features/dashboard/presentation/widgets/dashboard_elements.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 230, 230, 230),
                  Color(0xFFE2E8F4),
                  Color.fromARGB(255, 240, 239, 239)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
            padding: EdgeInsets.symmetric(
                horizontal:
                    15.h), // when I tried to put .h or .w some error appear
            child: const DashboardElements('Dashboard'),
          ),
        ),
      ),
    );
  }
}
