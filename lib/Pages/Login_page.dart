import 'package:baki_app/utils/Routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async{
    if (_formkey.currentState.validate()){
    setState(() {
      changeButton=true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Myroutes.homeroute);
    setState(() {
      changeButton=false;
    });
  }}
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.canvasColor,
       child: Form(
       key: _formkey,
         child: Column(
             children: [
             Image.asset("assets/images/hey.png",
             fit: BoxFit.cover,),
               SizedBox(height: 20.0,),
           Text(
             "WELCOME $name",
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 27,
             ),
           ),
               SizedBox(height: 20.0,),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
                 child: SingleChildScrollView(
                   child: Column(
                     children: [
                       TextFormField(
                         decoration: InputDecoration(
                           hintText: "Enter Username",
                           labelText: "USERNAME"
                         ),
                         validator: (value){
                           if(value.isEmpty){return "Username cannot be empty";
                           }
                           return null;
                         },
                         onChanged: (value) {
                           name=value;
                           setState(() {

                           });
                         },
                       ),
                       TextFormField(
                         obscureText: true,
                         decoration: InputDecoration(
                             hintText: "Enter Password",
                             labelText: "PASSWORD"
                         ),

                         validator: (value){
                           if(value.isEmpty){return "Password cannot be empty";
                           }
                           else if(value.length<6){return "Password cannot be less than 6 characters";
                           }
                           return null;
                         },
                       ),
                       SizedBox(height: 40.0,),
                       Material(
                         color: context.theme.buttonColor,
                         borderRadius: BorderRadius.circular(changeButton?50:8),

                         child: InkWell(
                           onTap: () => movetoHome(context),
                           child: AnimatedContainer(
                             duration: Duration(seconds: 1),
                             width: changeButton?50:120,
                             height: 40,
                             alignment: Alignment.center,
                             child: changeButton
                             ?Icon(
                               Icons.done,
                               color:Colors.white
                             )
                                 :Text(
                               "LOGIN",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 13,
                               ),
                             ),
                             ),
                           ),
                         ),
                       ],
                   ),
                 ),
               )
    ]
         ),
       )
      );
  }
}
