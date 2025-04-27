import 'package:application_day1_iti/views/screen3.dart';
// import 'package:application_day1_iti/views/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day1 ITI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ITIDay1(),
    );
  }
}

class ITIDay1 extends StatelessWidget {
  const ITIDay1({super.key});

  @override
  Widget build(BuildContext context) {
    return const
    //  Screen2();
    // Screen1();
    Screen3();
    
      }
}
