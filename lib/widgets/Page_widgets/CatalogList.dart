import 'package:baki_app/Pages/HomeDetailPage.dart';
import 'package:baki_app/models/catalog.dart';
import 'package:baki_app/widgets/Page_widgets/CatalogItem.dart';
import 'package:flutter/material.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(
                context,MaterialPageRoute(
                  builder: (context)=> HomeDetailPage(
                    catalog: catalog,
                  ),
              ),
              ),
              child: CatalogItem(catalog: catalog));
        }
    );
  }
}