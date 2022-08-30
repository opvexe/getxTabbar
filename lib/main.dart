import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottom/routes/pages.dart';
import 'package:getxbottom/routes/routes.dart';
import 'package:getxbottom/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx App',
      initialRoute: AppRoutes.Dashboard,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
