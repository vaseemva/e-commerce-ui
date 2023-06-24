import 'package:ecommerce_ui_akratech/screens/order_details_screen.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> screens = [const OrderDetailsScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 15.h(context),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w(context)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => screens[index],
                            ));
                          },
                          child: Text("Screen ${index+1}")), 
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      height: 2.h(context),
                    ),
                itemCount: screens.length),
          ),
        ],
      )),
    );
  }
}
