import 'package:ecommerce_ui_akratech/models/cart_item_model.dart';
import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.model,
  });

  final CartItemModel model;

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
                    model.name,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    model.description,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xff9e9e9e)),
                  ),
                  Text(
                    "\$${model.price}",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: orderPriceColor),
                  ),
                  Row(
                    children: [
                      model.mrp != null
                          ? Stack(
                              children: [
                                Text(
                                  'MRP: ${model.mrp}',
                                  style: const TextStyle(
                                      fontSize: 12, color: Color(0xff9e9e9e)),
                                ),
                                Positioned(
                                  top: 8, // Adjust the position of the line
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      SizedBox(
                        width:
                            model.mrp != null ? 23.w(context) : 38.w(context),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffb5b5b5)),
                                shape: BoxShape.circle),
                            child: const Icon(Icons.remove,
                                color: Color(0xffb5b5b5)),
                          ),
                          SizedBox(
                            width: 1.w(context),
                          ),
                          const Text(
                            "1",
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            width: 1.w(context),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffb5b5b5)),
                                shape: BoxShape.circle),
                            child:
                                const Icon(Icons.add, color: Color(0xffb5b5b5)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 2.h(context),
          ),
        ],
      ),
    );
  }
}
