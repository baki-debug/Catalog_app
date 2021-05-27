

class CatalogModel{
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fapplekid.pk%2Fwp-content%2Fuploads%2F2020%2F10%2Fapple-iphone-12-mini-64gb-dual-sim-black_5.jpg&f=1&nofb=1"
    )
  ];
}

class Item{
  final int id ;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}