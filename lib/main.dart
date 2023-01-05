import 'package:flutter/material.dart';
import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/scroll_desing.dart';
import 'package:disenos/screens/home_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'basic-desing':(_) => const BasicDesingScreen(),
        'scroll-desing':(_) => const ScrollScreen(),
        'home':(_) => const HomeScreen()
      },
    );
  }
}

