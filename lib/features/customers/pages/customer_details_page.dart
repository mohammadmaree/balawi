import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_form_field.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:balawi/core/widgets/build_drop_down.dart';
import 'package:balawi/features/customers/customers_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerDetailsPage extends StatelessWidget{
  const CustomerDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    CustomerController customerController = Get.put(CustomerController());
    return Scaffold(
      body: GetBuilder<CustomerController>(
      builder: (_) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultText(text: 'التفاصيل', color: PrimaryColors.black, fontSize: UiResponsive.dimension_15+ UiResponsive.dimension_15, fontWeight: FontWeight.bold,textAlign: TextAlign.center),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultFormField(controller: customerController.nameController, huntText: "الاسم الكامل", textInputType: TextInputType.name, textInputAction: TextInputAction.next),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: UiResponsive.screenWidth!*0.42, child: BuildDefaultFormField(controller: customerController.lengthController, huntText: "الطول", textInputType: TextInputType.name, textInputAction: TextInputAction.next)),
                  SizedBox(width: UiResponsive.screenWidth!*0.42, child: BuildDefaultFormField(controller: customerController.widthController, huntText: "العرض", textInputType: TextInputType.name, textInputAction: TextInputAction.next)),
                ],
              ),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDropDown(
                hint: 'اختر',
                width: UiResponsive.screenWidth!*0.8,
                lists: ["عادي","لبناني"],
                select: '',
                value: customerController.typeSelected,
                function: (value){
                  if(value != null){
                    customerController.selectType(value);
                  }
                },
              ),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultFormField(controller: customerController.phoneNumberController, huntText: "رقم التليفون", textInputType: TextInputType.name, textInputAction: TextInputAction.next),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultFormField(controller: customerController.noteController, huntText: "ملاحظات", textInputType: TextInputType.name, textInputAction: TextInputAction.next),
            ],
          ),
        ),
      );
  },
),
    );
  }
}
