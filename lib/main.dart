import 'package:baki_app/Pages/Login_page.dart';
import 'package:flutter/material.dart';
import 'Pages/Home_page.dart';
    void main()
    {runApp(MyApp());
    }
    
    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          // home: Homepage(),
          themeMode: ThemeMode.light,
          theme: ThemeData(primarySwatch: Colors.deepOrange),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          initialRoute: "/home",
          routes: {
            "/" : (context) => Loginpage(),
            "/home" : (context) => Homepage(),
            "/login" : (context) => Loginpage()
          },
        );
      }
    }
    