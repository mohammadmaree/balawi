import 'package:balawi/core/util/ui_responsive.dart';
import 'package:balawi/features/customers/data/models/customer_model.dart';
import 'package:balawi/features/customers/data/models/letter_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController{

  TextEditingController searchTextController = TextEditingController();

  Future search() async {

  }

  //TextEditingController codeCountryTextEditingController = TextEditingController(text:'+962');


  List<CustomerModel> customers = [
    CustomerModel(
      fullName: "محمد أحمد محمد مرعي",
      height: "110.0",
      width: "20.0",
      type: "عادي",
      phoneNumber: "0777309088",
      note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height: "105.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height:" 85.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "محمد أحمد محمد مرعي",
        height: "110.0",
        width: "20.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height: "105.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height:" 85.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "محمد أحمد محمد مرعي",
        height: "110.0",
        width: "20.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height: "105.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height:" 85.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "محمد أحمد محمد مرعي",
        height: "110.0",
        width: "20.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height: "105.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
    CustomerModel(
        fullName: "مراد أحمد محمد مرعي",
        height:" 85.0",
        width: "16.0",
        type: "عادي",
        phoneNumber: "0777309088",
        note: ""
    ),
  ];

  List<LetterModel> listOfLetters = [
    LetterModel(id:'ا', title: 'ا',selected: false),
    LetterModel(id:'ب', title: 'ب',selected: false),
    LetterModel(id:'ت', title: 'ت',selected: false),
    LetterModel(id:'ث', title: 'ث',selected: false),
    LetterModel(id:'ج', title: 'ج',selected: false),
    LetterModel(id:'ح', title: 'ح',selected: false),
    LetterModel(id:'خ', title: 'خ',selected: false),
    LetterModel(id:'د', title: 'د',selected: false),
    LetterModel(id:'ذ', title: 'ذ',selected: false),
    LetterModel(id:'ر', title: 'ر',selected: false),
    LetterModel(id:'ز', title: 'ز',selected: false),
    LetterModel(id:'س', title: 'س',selected: false),
    LetterModel(id:'ش', title: 'ش',selected: false),
    LetterModel(id:'ص', title: 'ص',selected: false),
    LetterModel(id:'ض', title: 'ض',selected: false),
    LetterModel(id:'ط', title: 'ط',selected: false),
    LetterModel(id:'ظ', title: 'ظ',selected: false),
    LetterModel(id:'ع', title: 'ع',selected: false),
    LetterModel(id:'غ', title: 'غ',selected: false),
    LetterModel(id:'ف', title: 'ف',selected: false),
    LetterModel(id:'ق', title: 'ق',selected: false),
    LetterModel(id:'ك', title: 'ك',selected: false),
    LetterModel(id:'ل', title: 'ل',selected: false),
    LetterModel(id:'م', title: 'م',selected: false),
    LetterModel(id:'ن', title: 'ن',selected: false),
    LetterModel(id:'هـ', title: 'هـ',selected: false),
    LetterModel(id:'و', title: 'و',selected: false),
    LetterModel(id:'ي', title: 'ي',selected: false)
  ];

  List<LetterModel> getList(){
    if(showAllReadingLevel){
      return listOfLetters;
    }else{
      return listOfLetters.take(UiResponsive.isTablet()?10:6).toList();
    }
  }

  selectLetters(String id) async {
    for (var letter in listOfLetters) {
      if(letter.id==id){
        if(letter.selected == true){
          letter.selected=false;
        }else{
          letter.selected=true;
        }
      }
    }
    update();
  }

  bool showAllReadingLevel = false;
  changeShowAllReadingLevel(){
    showAllReadingLevel = !showAllReadingLevel;
    update();
  }

}