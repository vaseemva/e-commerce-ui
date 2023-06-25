import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class GiftCardsPage extends StatelessWidget {
  const GiftCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add Gift Cards",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade100,
            child: ExpansionTile(
              tilePadding: const EdgeInsets.all(12),
              childrenPadding: const EdgeInsets.all(12),
              backgroundColor: Colors.grey,
              leading: Transform.scale(
                  scale: 1.5,
                  child: Image.asset(
                    "assets/images/offer_icon.png",
                    color: Colors.black,
                  )),
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Offers,Promo Code and Gift...',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("2 Offers Available")
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              children: const [
                ListTile(
                  title: Text('Offer 1'),
                ),
                ListTile(
                  title: Text('Offer 2'),
                ),
                ListTile(
                  title: Text('Offer 3'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h(context),
          ),
          Container(
            color: Colors.grey.shade100,
            padding: const EdgeInsets.all(12.0),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Item total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    "\$256",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 2.h(context),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Partner welfare fees",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Text(
                    "\$49",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  )
                ],
              ),
              SizedBox(
                height: 1.h(context),
              ),
              const Divider(
                thickness: 2,
              ),
              SizedBox(
                height: 1.h(context),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "\$348",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
            ]),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w(context)),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: fabColor),
                    height: 6.h(context),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          foregroundColor: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Continue",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h(context),
          )
        ],
      ),
    );
  }
}
