import 'package:flutter/material.dart';
import 'package:riverpod_learning/src/features/basic/basic.dart';
// import 'package:riverpod_learning/src/features/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const HomePage(
      //   title: "RiverPod Learning",
      // ),

      home: const Basic(),
    );
  }
}
