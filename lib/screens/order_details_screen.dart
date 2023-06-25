// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/widgets/order_detail_item.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui_akratech/utils/dummies.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Order Details",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h(context),
              ),
              SizedBox(
                  height: 68.h(context),
                  child: ListView.separated(
                      itemBuilder: (context, index) => OrderDetailItem(
                            orderDetailModel: DummyItems.dummyOrders[index],
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 1.h(context)),
                      itemCount: 5)),
              const Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text("Rice, Alo Borta. Bagon Borta.Vegetables, Beef ..."),
              SizedBox(
                height: 1.h(context),
              ),
              const Text(
                "Size",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text("12"),
              SizedBox(
                height: 1.h(context),
              ),
              const Divider(
                thickness: 2,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: orderPriceColor),
                  ),
                  Text(
                    "\$24",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: orderPriceColor),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
