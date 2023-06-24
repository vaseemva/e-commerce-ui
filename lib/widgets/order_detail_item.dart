import 'package:ecommerce_ui_akratech/screens/models/order_details_model.dart';
import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class OrderDetailItem extends StatelessWidget {
  const OrderDetailItem({
    Key? key,
    required this.orderDetailModel,
  }) : super(key: key);
  final OrderDetailModel orderDetailModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 10.h(context),
                width: 20.w(context),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    orderDetailModel.imageUrl,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              width: 2.w(context),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderDetailModel.name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 0.7.h(context),
                ),
                Text("\$${orderDetailModel.price}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: orderPriceColor)),
                Row(
                  children: [
                    Container(
                      height: 3.h(context),
                      width: 3.w(context),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: dateDotColor),
                    ),
                    SizedBox(
                      width: 1.w(context),
                    ),
                    Text(orderDetailModel.deliverydate)
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Text(
                  "Quantity: ",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "${orderDetailModel.quantity}",
                  style: const TextStyle(
                      color: orderPriceColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
