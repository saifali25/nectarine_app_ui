import 'package:flutter/material.dart';
import 'package:nectarine_app_ui/pages/getStarted.dart';
import 'package:nectarine_app_ui/pages/home.dart';
import 'package:nectarine_app_ui/pages/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/product': (context) => ProductView(),
      },
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
    );
  }
}
