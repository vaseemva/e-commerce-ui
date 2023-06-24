class OrderDetailModel {
  String name;
  num price;
  String deliverydate;
  int quantity;
  String imageUrl;

  
  OrderDetailModel({
    required this.name,
    required this.price,
    required this.deliverydate,
    required this.quantity,
    required this.imageUrl,
  });
}
