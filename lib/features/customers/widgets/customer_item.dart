import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:flutter/material.dart';

class CustomerItem extends StatelessWidget {
  final String name;
  const CustomerItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 10.0),
      margin: EdgeInsets.symmetric(vertical: UiResponsive.calculateHeight(7.0)),
      height: UiResponsive.calculateHeight(60.0),
      decoration: BoxDecoration(
        color: PrimaryColors.white,
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(color: PrimaryColors.grey,width: 0.5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              color: PrimaryColors.grey.withOpacity(0.2),
              blurRadius: 1),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildDefaultText(text: name, color: PrimaryColors.black, fontSize: UiResponsive.dimension_18,fontWeight: FontWeight.w500),
          BuildDefaultText(text: 'عرض المزيد', color: PrimaryColors.black, fontSize: UiResponsive.dimension_14),
        ],
      ),
    );
  }
}
