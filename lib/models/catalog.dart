

class CatalogModel{
  static List<Item> items;

   Item getById(id) =>
      items.firstWhere((element) => element.id = id, orElse: null);
  //
  // static Item getByPosition(int pos) => items[pos];
}

class Item{
  int id ;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});

factory Item.fromMap(Map<String,dynamic> map){
return Item(
  id: map["id"],
    name: map["name"],
    desc: map["desc"],
    price: map["price"],
    color: map["color"],
    image: map["image"],
);
}
 toMap()=> {
   "id": id,
   "name":name,
   "desc":desc,
   "price":price,
   "color":color,
   "image":image,
 };
}