import 'package:festival_post_app/view/screens/editingscreen/editing_screen.dart';
import 'package:festival_post_app/view/screens/edittemplatescreen/edit_screen.dart';
import 'package:festival_post_app/view/screens/homescreen/home_screen.dart';
import 'package:festival_post_app/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FestivalPostApp());
}

class FestivalPostApp extends StatelessWidget {
  const FestivalPostApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen(),
        '/home' : (context) => const HomeScreen(),
        '/template' : (context) => const EditTemplateScreen(),
        '/edit' : (context) => const EditScreen(),
      },
    );
  }
}