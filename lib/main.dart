import 'package:baki_app/Pages/CartPage.dart';
import 'package:baki_app/Pages/Login_page.dart';
import 'package:baki_app/utils/Routes.dart';
import 'package:baki_app/widgets/themes.dart';
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
          themeMode: ThemeMode.system,
          theme: MyTheme.lightTheme(context),
          darkTheme: MyTheme.darkTheme(context),

          initialRoute: Myroutes.homeroute,
          routes: {
            Myroutes.loginroute: (context) => Loginpage(),
            Myroutes.homeroute: (context) => Homepage(),
            Myroutes.cartRoute: (context) => CartPage(),

          },
        );
      }
    }
    