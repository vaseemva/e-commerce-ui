import 'package:ecommerce_ui_akratech/models/order_history_model.dart';
import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class OrderHistoryItem extends StatelessWidget {
  const OrderHistoryItem({
    super.key,
    required this.model,
  });

  final OrderHistoryModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdedede)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: 5.w(context), vertical: 2.0.h(context)),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: 10.h(context),
                  width: 20.w(context),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      model.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(
                width: 3.w(context),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.orderId,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${model.items} Items",
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 2.h(context),
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfff1f1f1), elevation: 0),
                  child: const Text(
                    "Review",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w(context),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: fabColor, elevation: 0),
                  child: const Text(
                    "ReOrder",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
