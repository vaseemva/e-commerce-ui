import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/dummies.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:ecommerce_ui_akratech/widgets/bottom_nav_bar.dart';
import 'package:ecommerce_ui_akratech/widgets/custom_fab.dart';
import 'package:ecommerce_ui_akratech/widgets/order_history_item.dart';
import 'package:flutter/material.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "My Order History",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: fabColor,
          indicator: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: fabColor, // Color of the selected tab indicator
                width: 4.0, // Thickness of the selected tab indicator
              ),
            ),
          ),
          indicatorPadding: const EdgeInsets.all(0),
          labelColor: fabColor, // Text color of the selected tab
          unselectedLabelColor: Colors.black,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'On Delivery'),
            Tab(text: 'History'),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 1.h(context), horizontal: 3.w(context)),
        child: ListView.separated(
            itemBuilder: (context, index) => OrderHistoryItem(
                  model: DummyItems.orders[index],
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 2.h(context),
                ),
            itemCount: 3),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
      floatingActionButton: const CustomFloatingAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
