import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:ecommerce_ui_akratech/widgets/custom_dialogue.dart';
import 'package:ecommerce_ui_akratech/widgets/custom_radio_listtiel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int radioValue = 1;
  int paymentRAdioVAlue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w(context)),
        child: Column(
          children: [
            //Address
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "New address",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: orderPriceColor,
                    color: orderPriceColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h(context),
            ),
            CustomRadioListTile(
              radioValue: radioValue,
              value: 1,
            ),
            SizedBox(
              height: 2.h(context),
            ),
            CustomRadioListTile(
              radioValue: radioValue,
              value: 2,
            ),
            SizedBox(
              height: 2.h(context),
            ),
//payment methods
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Methods",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  "New Card",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                    decorationColor: orderPriceColor,
                    color: orderPriceColor,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 1.h(context),
            ),

            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 5.w(context), vertical: 0.7.h(context)),
                child: ListTile(
                  leading: SizedBox(
                      height: 8.h(context),
                      width: 10.w(context),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/visa_logo.png",
                          fit: BoxFit.contain,
                        ),
                      )),
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Credit Card",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("XXXX XXXX XXXX 1234"),
                  trailing: Radio(
                    value: 1,
                    activeColor: orderPriceColor,
                    groupValue: paymentRAdioVAlue,
                    onChanged: (value) {},
                  ),
                )),
            SizedBox(
              height: 1.h(context),
            ),

            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 5.w(context), vertical: 0.7.h(context)),
                child: ListTile(
                  leading: SizedBox(
                      height: 8.h(context),
                      width: 10.w(context),
                      child: const Icon(
                        Icons.account_balance,
                        color: Color(0xfffc4136),
                        size: 30,
                      )),
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "Bank Account",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Ending in 1234"),
                  trailing: Radio(
                    value: 2,
                    activeColor: orderPriceColor,
                    groupValue: paymentRAdioVAlue,
                    onChanged: (value) {},
                  ),
                )),
            SizedBox(
              height: 1.h(context),
            ),

            Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffdedede)),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 5.w(context), vertical: 0.7.h(context)),
                child: ListTile(
                  leading: SizedBox(
                      height: 8.h(context),
                      width: 10.w(context),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/paypal_logo.png",
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                  contentPadding: EdgeInsets.zero,
                  title: const Text(
                    "PayPal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("paypal@gmail.com"),
                  trailing: Radio(
                    value: 3,
                    activeColor: orderPriceColor,
                    groupValue: paymentRAdioVAlue,
                    onChanged: (value) {},
                  ),
                )),
            Expanded(
              child: SizedBox(
                height: 1.h(context),
              ),
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
                        showDialog(
                          context: context,
                          builder: (context) => const CustomDialogue(),
                        );
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
            ),
            SizedBox(
              height: 1.h(context),
            ),
          ],
        ),
      ),
    );
  }
}
