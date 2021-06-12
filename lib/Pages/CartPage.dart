import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.bold.make(),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
      }
}


class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$9000".text.xl4.color(context.theme.accentColor).make().p16(),
          30.widthBox,
          ElevatedButton(
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar
                (content: "Buying not supported yet. Please try again later.".text.make()));
            },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor)),
              child: "BUY".text.white.make()
            ).p16().w32(context)
        ],
      ),

    );
  }
}
class _CartList extends StatefulWidget {
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index) => ListTile(
          leading: Icon(Icons.done),
          trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
            onPressed: (){},
          ),
          title: "item 1".text.make(),
        )
    );
  }
}
