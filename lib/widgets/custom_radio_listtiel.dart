import 'package:ecommerce_ui_akratech/utils/colors.dart';
import 'package:ecommerce_ui_akratech/utils/responsive_sizer.dart';
import 'package:flutter/material.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.radioValue,
    required this.value,
  });

  final int radioValue;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffdedede)),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: 5.w(context), vertical: 0.7.h(context)),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            "Chole B Bird",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: const Text("87 Great North Road, Alton"),
          trailing: Radio(
            value: value,
            activeColor: orderPriceColor,
            groupValue: radioValue,
            onChanged: (value) {},
          ),
        ));
  }
}
