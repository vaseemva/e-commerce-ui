import 'package:ecommerce_ui_akratech/screens/gift_cards_page.dart';
import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/dummies.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:ecommerce_ui_akratech/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
        child: ListView.separated(
            itemBuilder: (context, index) =>
                CartItem(model: DummyItems.cartItems[index]),
            separatorBuilder: (context, index) =>
                SizedBox(height: 2.h(context)),
            itemCount: 4),
      ),
      bottomSheet: Container(
          height: 24.h(context),
          padding: EdgeInsets.symmetric(
              vertical: 1.h(context), horizontal: 4.w(context)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(23)
                  .copyWith(bottomLeft: Radius.zero, bottomRight: Radius.zero)),
          child: Column(
            children: [

              Container(height: 0.6  .h(context),width: 30 .w(context),color: Color(0xff9e9e9e),),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sub Total",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$88.10",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping fee",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$9.10",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Estimating Tax",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$6.50",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\$104.50",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: fabColor),
                      height: 6.h(context),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => GiftCardsPage(),));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            foregroundColor: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
