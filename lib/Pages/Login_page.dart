import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

       child: Column(
           children: [
           Image.asset("assets/images/login.png",
           fit: BoxFit.cover,),
             SizedBox(height: 20.0,),
         Text(
           "WELCOME",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             fontSize: 27,
           ),
         ),
             SizedBox(height: 20.0,),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
               child: Column(
                 children: [
                   TextFormField(
                     decoration: InputDecoration(
                       hintText: "Enter Username",
                       labelText: "USERNAME"
                     ),
                   ),
                   TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                         hintText: "Enter Password",
                         labelText: "PASSWORD"
                     ),
                   ),
                   SizedBox(height: 20.0,),
                   ElevatedButton(
                       onPressed: () {
                         print("Login successful");
                   }, child: Text("LOGIN"),
                   style: TextButton.styleFrom())
                 ],
               ),
             )
    ]
       )
      );
  }
}
