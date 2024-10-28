import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'configs/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login System',
      theme: ThemeData(
        primaryColor: const Color(0xFF40916C),
        scaffoldBackgroundColor: const Color(0xFFD8F3DC),
      ),
      initialRoute: '/login',
      getPages: Routes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
