import 'package:baki_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key key,@required this.catalog}) :assert(catalog!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
   bottomNavigationBar: Container(
     color: context.cardColor,
     child: ButtonBar(
       alignment: MainAxisAlignment.spaceBetween,
       buttonPadding: EdgeInsets.zero,
       children: [
         "\$${catalog.price}".text.bold.xl4.red900.make(),
         ElevatedButton(onPressed: () {},
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                 shape: MaterialStateProperty.all(StadiumBorder(),
                 )),
             child: "Add to Cart".text.make()).wh(120,50)
       ],
     ).p32(),
   ),
   body: SafeArea(
     bottom: false,
     child: Column(
       children: [
      Hero(
          tag: Key(catalog.id.toString()),
          child: Image.network(catalog.image),
          ).h32(context),
         Expanded(child: VxArc(
           height: 30.0,
           arcType: VxArcType.CONVEY,
           edge: VxEdge.TOP,
           child: Container(
             width: context.screenWidth,
             color: context.cardColor,
             child: Column( children: [
                  catalog.name.text.xl4.color(context.accentColor).bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).xl.make(),
                  10.heightBox,
                  "The point of using dummy text for your paragraph is that it has a more-or-less normal distribution of letters. making it look like readable English.The point of using dummy text for your paragraph is that it has a more-or-less normal distribution of letters. making it look like readable English.".text.textStyle(context.captionStyle).make().p16(),
              ]
             ).py64(),
           ),
         ))
  ],
),
   ),
    );
  }
}
