import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:travjo_web/bindings/appbinding.dart';
import 'package:travjo_web/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.red,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Appbinding(),
      debugShowCheckedModeBanner: false,
      title: 'Travjo',
      theme: ThemeData(
          primarySwatch: Colors.red,
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(primary: Colors.black))),
      home: const HomeScreen(),
    );
  }
}
