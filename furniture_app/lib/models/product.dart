class Product{
  final int id, price;
  final String title, description, image;

  Product({required this.id,
           required this.price,
           required this.title,
           required this.description,
           required this.image});
}


List<Product> products = [
  Product(id: 1, price: 56, title: "Classic Leather Arm Chair", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim", image: "assets/images/Item_1.png"),
  Product(id: 2, price: 68, title: "Poppy Plastic Tub Chair", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim", image: "assets/images/Item_2.png"),
  Product(id: 3, price: 39, title: "Bar Stool Chair", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim", image: "assets/images/Item_3.png"),
];

