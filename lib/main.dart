import 'package:mr_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mr_store/routes.dart';
import 'package:mr_store/core/locale/locale.dart';
import 'package:mr_store/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        // Get.put(ColorController());
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          themeMode: ThemeMode.system,
          theme: TAppTheme.lightTheme,
          darkTheme: TAppTheme.darkTheme,
          locale: Get.deviceLocale,
          translations: MyLocale(),
          getPages: routes,
          home: child,
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}