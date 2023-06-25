import 'package:ecommerce_ui_akratech/models/cart_item_model.dart';
import 'package:ecommerce_ui_akratech/models/order_details_model.dart';
import 'package:ecommerce_ui_akratech/models/order_history_model.dart';

class DummyItems {
  static List<OrderDetailModel> dummyOrders = [
    OrderDetailModel(
        name: "Natural Jasmin",
        price: 80.50,
        deliverydate: "Delivered at 11:14 AM",
        quantity: 2,
        imageUrl: "assets/images/image_1.jpg"),
    OrderDetailModel(
        name: "Syrup",
        price: 5.95,
        deliverydate: "Delivered at 11:14 AM",
        quantity: 2,
        imageUrl: "assets/images/image_2.png"),
    OrderDetailModel(
        name: "Hand Sanitizer",
        price: 220.35,
        deliverydate: "Delivered at 11:14 AM",
        quantity: 2,
        imageUrl: "assets/images/image_3.jpg"),
    OrderDetailModel(
        name: "Perls",
        price: 220.25,
        deliverydate: "Delivered at 11:14 AM",
        quantity: 2,
        imageUrl: "assets/images/image_4.jpg"),
    OrderDetailModel(
        name: "Pearls",
        price: 80.95,
        deliverydate: "Delivered at 11:14 AM",
        quantity: 2,
        imageUrl: "assets/images/image_5.jpg")
  ];

  List<String> images = [
    "assets/images/image_1.jpg",
    "assets/images/image_2.jpg",
    "assets/images/image_3.jpg",
    "assets/images/image_4.jpg",
    "assets/images/image_5.jpg"
  ];

  static List<OrderHistoryModel> orders = [
    OrderHistoryModel(
        imageUrl: "assets/images/image_1.jpg",
        orderId: "Order ID: #2CE5DW",
        items: 3),
    OrderHistoryModel(
        imageUrl: "assets/images/image_2.png",
        orderId: "Order ID: #2CE5DW",
        items: 3),
    OrderHistoryModel(
        imageUrl: "assets/images/image_3.jpg",
        orderId: "Order ID: #2CE5DW",
        items: 3)
  ];

  static List<CartItemModel> cartItems = [
    CartItemModel(
        name: "Natural Jasmin",
        description: "Bottle of 100 Capsule",
        price: 80.50,
        mrp: 120,
        imageUrl: "assets/images/image_1.jpg"),
    CartItemModel(
        name: "Syrup",
        description: "Bottle of 200 ml",
        price: 5.95,
        imageUrl: "assets/images/image_2.png",
        mrp: 220),
    CartItemModel(
      name: "Hand Sanitizer",
      description: "Liquid (200 ml)",
      price: 220.95,
      imageUrl: "assets/images/image_3.jpg",
    ),
    CartItemModel(
      name: "Pearls",
      description: "Liquid (200 ml)",
      price: 100.95,
      imageUrl: "assets/images/image_4.jpg",
    ),
  ];
}
