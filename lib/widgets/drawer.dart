import 'package:baki_app/utils/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl= "https://wallpapercave.com/wp/wp2170430.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Bakhshish Singh"),
                accountEmail: Text("bakhshishsingh773@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
        )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(
                color: Colors.white,
              )),
            ),
            ListTile(
              onTap: (){
                Navigator.pushNamed(context, Myroutes.loginroute);
              },
              leading: Icon(
                CupertinoIcons.keyboard,
                color: Colors.white,
              ),
              title: Text(
                  "Login",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                  "About",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )
              ),
            )

          ],
        ),
      ) ,
    );
  }
}
