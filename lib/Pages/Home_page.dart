import 'package:baki_app/models/catalog.dart';
import 'package:baki_app/widgets/drawer.dart';
import 'package:baki_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Bakhshish";
  @override
  Widget build(BuildContext context) {
    final dummy=List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: dummy.length,
          itemBuilder: (context, index){
            return ItemWidget(item: dummy[index],);
          }),
      ),
      drawer: MyDrawer(),
    );
  }
}
