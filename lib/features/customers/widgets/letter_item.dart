import 'package:balawi/core/resources/color.dart';
import 'package:balawi/core/resources/images.dart';
import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/features/customers/data/models/letter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LetterItem extends StatelessWidget {
  final LetterModel letter;
  final VoidCallback function;
  const LetterItem({required this.letter, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        function();
      },
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height:UiResponsive.isTablet()?82.0:72.0,
            width:UiResponsive.isTablet()?82.0:72.0,
            decoration: BoxDecoration(
                color: (letter.selected??false)?Color(0xFFd9f1fa):PrimaryColors.white,
                borderRadius: BorderRadius.circular(13.0),
                border:Border.all(width: 2.0, color: (letter.selected??false)?PrimaryColors.blue.withOpacity(1.0):PrimaryColors.black.withOpacity(0.5)),
                boxShadow:(letter.selected??false)?[
                  BoxShadow(
                      color: Colors.blue.withOpacity(0.34),
                      offset: Offset(0, 4),
                      blurRadius: 13)
                ]:null
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      letter.title??'',
                      style: TextStyle(
                          color: (letter.selected??false)?PrimaryColors.blue:PrimaryColors.black.withOpacity(0.5),
                          fontSize: UiResponsive.isTablet()?45.0:40.0,
                          fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    margin: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                    padding: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (letter.selected??false)?PrimaryColors.blue:PrimaryColors.white,
                        border: Border.all(color: (letter.selected??false)?PrimaryColors.blue.withOpacity(0.4):PrimaryColors.black.withOpacity(0.5),width: 2.0)
                    ),
                    child: SvgPicture.asset(
                      PrimaryImages.check,
                      width: 10.0,
                      color: PrimaryColors.white,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
