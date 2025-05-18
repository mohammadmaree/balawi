import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/resources/constants.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_form_field.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:balawi/core/widgets/build_drop_down.dart';
import 'package:balawi/features/customers/customers_controller.dart';
import 'package:balawi/features/customers/data/models/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerDetailsPage extends StatefulWidget{
  CustomerModel? customer;
  CustomerDetailsPage({super.key, this.customer});

  @override
  State<CustomerDetailsPage> createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends State<CustomerDetailsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  @override
  void initState() {
    if(widget.customer!=null){
      nameController.text = widget.customer?.fullName??"";
      phoneNumberController.text = widget.customer?.phoneNumber??"";
      lengthController.text = widget.customer?.height??"";
      widthController.text = widget.customer?.width??"";
      noteController.text = widget.customer?.note??"";
      typeSelected = widget.customer?.type??"";
    }
    super.initState();
  }

  String? typeSelected;
  Future selectType(String type)async{
   setState(() {
     typeSelected = type;
   });
  }

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Get.back();
                  }, icon: Icon(Icons.arrow_back),iconSize: UiResponsive.screenWidth!*0.09),
                  BuildDefaultText(text: 'التفاصيل', color: PrimaryColors.black, fontSize: UiResponsive.dimension_15+ UiResponsive.dimension_15, fontWeight: FontWeight.bold,textAlign: TextAlign.center),
                  Opacity(
                    opacity: 0.0,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),iconSize: UiResponsive.screenWidth!*0.1)),
                ],
              ),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultFormField(controller: nameController, huntText: "الاسم الكامل", textInputType: TextInputType.name, textInputAction: TextInputAction.next),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: UiResponsive.screenWidth!*0.42, child: BuildDefaultFormField(controller: lengthController, huntText: "الطول", textInputType: TextInputType.name, textInputAction: TextInputAction.next)),
                  SizedBox(width: UiResponsive.screenWidth!*0.42, child: BuildDefaultFormField(controller: widthController, huntText: "العرض", textInputType: TextInputType.name, textInputAction: TextInputAction.next)),
                ],
              ),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDropDown(
                hint: 'اختر',
                width: UiResponsive.screenWidth!*0.8,
                lists: ["عادي","لبناني"],
                select: '',
                value: typeSelected,
                function: (value){
                  if(value != null){
                    selectType(value);
                  }
                },
              ),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              BuildDefaultFormField(controller: phoneNumberController, huntText: "رقم التليفون", textInputType: TextInputType.name, textInputAction: TextInputAction.next),
              SizedBox(height: UiResponsive.calculateHeight(20.0)),
              TextFormField(
                controller: noteController,
                maxLines: 10,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.none,
                style: TextStyle(
                    color: PrimaryColors.black,
                  fontSize: UiResponsive.screenWidth!*0.05
                ),
                decoration: InputDecoration(
                  hintText: "ملاحظات",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: UiResponsive.screenWidth!*0.045,fontWeight: FontWeight.w400,fontFamily: TAJAWAL),
                  contentPadding:EdgeInsetsDirectional.only(start:UiResponsive.screenWidth!*0.05,top: UiResponsive.screenHeight!*0.019,bottom: UiResponsive.screenHeight!*0.019),
                  border: InputBorder.none,
                  focusedBorder:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: PrimaryColors.black.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color:PrimaryColors.black.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: PrimaryColors.black.withOpacity(0.5),
                      width: 1.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  },
),
    );
  }
}
