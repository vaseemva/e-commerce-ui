import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomDialogue extends StatelessWidget {
  const CustomDialogue({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 60.h(context),
        width: 95.w(context),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5.h(context),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: fabColor, width: 3),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.done,
                size: 70,
                color: fabColor,
              ),
            ),
            SizedBox(
              height: 2.h(context),
            ),
            const Text(
              "Thank You",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 2.h(context),
            ),
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(
                    text: 'Your order ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const TextSpan(
                    text: '#345678',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const TextSpan(
                    text:
                        ' is Completed. \nPlease check the Delivery status at\n',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Order Tracking',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration:
                            TextDecoration.underline,
                        color: orderPriceColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        ;
                      },
                  ),
                  const TextSpan(
                    text: ' pages.',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 4.w(context),
                  vertical: 3.h(context)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(12),
                          color: fabColor),
                      height: 6.h(context),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.transparent,
                            elevation: 0,
                            foregroundColor:
                                Colors.white),
                        child: const Text(
                          "Go to order", 
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
