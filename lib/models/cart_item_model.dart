// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartItemModel {
  String name;
  String description;
  num price;
  num? mrp;
  String imageUrl;
  CartItemModel({
    required this.name,
    required this.description,
    required this.price,
    this.mrp,
    required this.imageUrl,
  });
}
