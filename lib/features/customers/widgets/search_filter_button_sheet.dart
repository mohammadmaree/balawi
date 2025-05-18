import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:balawi/features/customers/customers_controller.dart';
import 'package:balawi/features/customers/widgets/letter_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFilterButtonSheet extends StatelessWidget{
   SearchFilterButtonSheet();

  @override
  Widget build(BuildContext context) {
    CustomerController customerController = Get.put(CustomerController());
    return GetBuilder<CustomerController>(
    builder:(_){
    return Container(
      // height: UiResponsive.screenHeight!*0.88,
      height: UiResponsive.screenHeight!*0.85,
      padding: const EdgeInsets.only(top:26.0, left: 10.0, right: 10.0,bottom: 15.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only( left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: UiResponsive.dimension_18+UiResponsive.dimension_18,
                      width: UiResponsive.dimension_18+UiResponsive.dimension_18,
                      padding: EdgeInsets.all(4.0),
                      color: Colors.white,
                      child:Icon(Icons.close,size: UiResponsive.dimension_25),
                    )),
                BuildDefaultText(
                  text: "الأحرف",
                  color: PrimaryColors.black,
                  fontSize: UiResponsive.dimension_22,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap:(){
                    //removeAllSelected();
                  },
                  child: BuildDefaultText(
                    text:"حذف الكل",
                    color: PrimaryColors.black,
                    fontSize: UiResponsive.dimension_14,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: UiResponsive.calculateHeight(30.0)),
          GridView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: UiResponsive.isTablet()?5:3, // Number of items per row
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0, // Adjust this to change the aspect ratio of each item
            ),
            itemCount: customerController.getList().length,
            itemBuilder: (context, index) {
              return LetterItem(
                letter: customerController.getList()[index],
                function: (){
                  customerController.selectLetters(customerController.getList()[index].id??"");
                },
              );
            },
          ),
          const SizedBox(height: 28.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  customerController.changeShowAllReadingLevel();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13.0),
                      color: Colors.blue
                  ),
                  child: BuildDefaultText(
                    text:customerController.showAllReadingLevel?"إظهار أقل":"شاهد المزيد",
                    color: PrimaryColors.white,
                    fontSize: UiResponsive.dimension_14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  },
);
  }

}
