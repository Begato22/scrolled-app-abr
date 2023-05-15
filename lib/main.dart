import 'package:flutter/material.dart';
import 'package:test_title_scrolling/app_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey.shade900,
        primarySwatch: Colors.blueGrey,
      ),
      title: 'Marquee Demo',
      home: const Scaffold(
        backgroundColor: Colors.black45,
        body: MyScreen(),
      ),
    );
  }
}
