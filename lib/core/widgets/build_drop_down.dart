import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/core/widgets/build_default_text.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class BuildDropDown extends StatelessWidget {
  final String hint;
  final List<String> lists;
  final String select;
  final String? value;
  final Function(String?) function;
  double? width;

  BuildDropDown({
    required this.hint,
    required this.lists,
    required this.select,
    required this.value,
    required this.function,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??UiResponsive.screenWidth!,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String?>(
          isExpanded: true,
          hint: BuildDefaultText(
            text: hint,
            color: Colors.grey,
            fontSize: UiResponsive.screenWidth!*0.045,
            fontWeight: FontWeight.w400,
          ),
          items: [
            ...lists.map((item) => DropdownMenuItem(
              value: item,
              child: BuildDefaultText(
                text: item,
                color: PrimaryColors.black,
                fontSize: UiResponsive.screenWidth!*0.05,
                fontWeight: FontWeight.w400,
              ),
            ),).toList(),
          ],
          value: value,
          onChanged: (String? currentValue) {
            function(currentValue);
          },
          buttonStyleData: ButtonStyleData(
            height: UiResponsive.screenHeight! * 0.078,
            width: UiResponsive.screenWidth! * 0.8,
            padding:  EdgeInsetsDirectional.only(start:UiResponsive.screenWidth!*0.05,end: UiResponsive.screenWidth!*0.03),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(UiResponsive.dimension_11),
              border: Border.all(color:PrimaryColors.black.withOpacity(0.5),width: 0.6),
            ),
            //  elevation: 1,
          ),
          alignment: AlignmentDirectional.centerStart,
          iconStyleData: IconStyleData(
            icon:Icon(Icons.keyboard_arrow_down_outlined),
            iconSize: UiResponsive.screenWidth!*0.065,
            iconEnabledColor: PrimaryColors.black,
            iconDisabledColor: PrimaryColors.black,
          ),
          dropdownStyleData: DropdownStyleData(
              maxHeight: UiResponsive.screenHeight! * 0.3,
              //   width: UiResponsive.screenWidth! * 0.8,
              padding: null,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(UiResponsive.dimension_11),
                //border: Border.all(color: PrimaryColors.boldGray,width: 0.6),
              ),
              // elevation: 2,
              //offset: const Offset(20, 0),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: MaterialStateProperty.all(6),
                thumbVisibility: MaterialStateProperty.all(true),
              )),
          menuItemStyleData: MenuItemStyleData(
            height: UiResponsive.screenHeight! * 0.065,
            padding: null,
          ),
        ),
      ),
    );
  }
}