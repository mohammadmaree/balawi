import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/resources/images.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:balawi/features/customers/customers_controller.dart';
import 'package:balawi/features/customers/pages/customer_details_page.dart';
import 'package:balawi/features/customers/widgets/customer_item.dart';
import 'package:balawi/features/customers/widgets/search_filter_button_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({super.key});

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, // لون خلفية شريط الحالة
      statusBarIconBrightness: Brightness.dark, // لون الأيقونات (light أو dark)
    ));  }
  @override
  Widget build(BuildContext context) {
    CustomerController customerController = Get.put(CustomerController());
    return Scaffold(
      body: PopScope(
        canPop: false,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: ListView(
              children: [
                SizedBox(height: UiResponsive.calculateHeight(20.0)),
                BuildDefaultText(text: 'الزبائن', color: PrimaryColors.black, fontSize: UiResponsive.dimension_15+ UiResponsive.dimension_15, fontWeight: FontWeight.bold,textAlign: TextAlign.center),
                SizedBox(height: UiResponsive.calculateHeight(20.0)),
                SizedBox(
                  //width: UiResponsive.screenWidth!*0.7,
                  width: UiResponsive.screenWidth!*0.9,
                  child:  TextFormField(
                    controller: customerController.searchTextController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    style: const TextStyle(
                        color: PrimaryColors.black
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: PrimaryColors.white,
                      hintText: 'ابحث عن الاسم',
                      hintStyle: TextStyle(
                          fontSize: UiResponsive.dimension_14,
                          color: Color(0xFF9A9DA3),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBMPlexSansArabic'
                      ),
                      suffixIcon: SvgPicture.asset(
                          PrimaryImages.search,
                          fit: BoxFit.scaleDown),
                      focusColor: PrimaryColors.grey,
                      contentPadding: EdgeInsets.only(top: UiResponsive.calculateHeight(20.0),bottom: UiResponsive.calculateHeight(22.0),right: UiResponsive.calculateWidth(15.0)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: PrimaryColors.grey,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: PrimaryColors.grey,
                          width: 1.0,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color:PrimaryColors.grey,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: const BorderSide(
                          color: PrimaryColors.grey,
                          width: 1.0,
                        ),
                      ),
                    ),
                    onFieldSubmitted:(String? v){

                    },
                    onChanged: (v){
                      customerController.search();
                    },
                  ),
                ),
                SizedBox(height: UiResponsive.calculateHeight(20.0)),
                ...customerController.customers.map((element){
                  return CustomerItem(customer: element);
                }),
                SizedBox(height: UiResponsive.calculateHeight(75.0)),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         // Get.to(CustomerDetailsPage());
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return SearchFilterButtonSheet();
            },
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,color: PrimaryColors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // موقع الزر
    );
  }
}
