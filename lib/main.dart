import 'package:booking/features/hotel/presentation/pages/hotel_page.dart';
import 'package:booking/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:booking/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotelPage(),
    );
  }
}
