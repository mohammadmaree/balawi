import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:balawi/features/customers/widgets/customer_item.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultText(text: 'الزبائن', color: PrimaryColors.black, fontSize: UiResponsive.dimension_15+ UiResponsive.dimension_15, fontWeight: FontWeight.bold,textAlign: TextAlign.center),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              CustomerItem(name: 'محمد أحمد محمد مرعي'),
              CustomerItem(name: 'محمد أحمد محمد مرعي'),
              CustomerItem(name: 'محمد أحمد محمد مرعي'),
            ],
          ),
        ),
      ),
    );
  }
}
