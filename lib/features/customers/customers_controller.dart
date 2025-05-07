import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController{

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  //TextEditingController codeCountryTextEditingController = TextEditingController(text:'+962');


  String? typeSelected;
  Future selectType(String type)async{
    typeSelected = type;
    update();
  }
}