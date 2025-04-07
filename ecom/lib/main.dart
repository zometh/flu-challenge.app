import 'package:ecom/screens/product_view_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      enableScaleText: () => true,
      enableScaleWH: () => true,
      minTextAdapt: true,
      designSize: const Size(440, 956),
      child: GetMaterialApp(
        builder: (_, child) {
          return ScaffoldMessenger(child: child!);
        },
        debugShowCheckedModeBanner: false,
        title: 'Ecom',
        defaultTransition: Transition.cupertino,
        theme: ThemeData(
          
        ),
        home: const ProductViewPage(),
      ),
    );
  }
}
