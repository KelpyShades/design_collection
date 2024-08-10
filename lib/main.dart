import 'package:flutter/material.dart';
import 'package:my_designs/core/routes.dart';
// import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: myroutes,
      theme: ThemeData.dark(),
    );
  }
}
