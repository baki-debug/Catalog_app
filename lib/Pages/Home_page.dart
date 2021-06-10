import 'package:baki_app/models/catalog.dart';
import 'package:baki_app/utils/Routes.dart';
import 'package:baki_app/widgets/Page_widgets/CatalogHeader.dart';
import 'package:baki_app/widgets/Page_widgets/CatalogList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = "Bakhshish";
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
  final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
  final decodedData = jsonDecode(catalogJson);
  var productsData = decodedData["products"];
  CatalogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
setState(() {

});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, Myroutes.cartRoute);
      },
      child: Icon(CupertinoIcons.cart,color: Colors.white,),
      backgroundColor: context.theme.buttonColor,),
      body:SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      )
    );
  }
}






