import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_final_project_app/auth/login.dart';
import 'package:flutter_final_project_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'models/restaurant.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
   MultiProvider(providers: [
      // theme provider
     ChangeNotifierProvider(create: (context) => ThemeProvider()),

     // restaurant provider
         ChangeNotifierProvider(create: (context) => Restaurant()),

  ],
     child: const MyApp(),
  ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brew Haven',
      home: const LoginScreen(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
