import 'dart:ffi';

import 'package:country_info_by_capital/app/data/model/capitalModel.dart';
import 'package:country_info_by_capital/app/data/repository/capitalRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final isLoading = true.obs;
  final locatonController = TextEditingController().obs;
  final capitalList = <CapitalModel>[].obs;
  @override
  void onInit() {
    locatonController.value.text='Dhaka';
    fetch();
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  late CapitalModel model;

  fetch() async{
    final location = locatonController.value.text;

    if( locatonController.value.text.isNotEmpty){
      isLoading.value = true;
      var respose = await CapitalRepository().getResponse(location);
      capitalList.value =respose;
      print(respose.toString());


      isLoading.value = false;
    }else{
      Get.snackbar("Error: ", "You must have to enter CAPITAL NAME");
    }

  }

  search(){
    fetch();
  }


}
