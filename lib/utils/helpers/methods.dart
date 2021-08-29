


import 'package:didi/ui/screens/homescreen/widgets/order_bottom_sheet.dart';
import 'package:didi/utils/enums/meal_portion.dart';
import 'package:didi/utils/enums/payment_method.dart';
import 'package:flutter/material.dart';

void showOrderMealPopup(BuildContext context){
  showBottomSheet(
      context: context,
      builder: (context)=> OrderBottomSheet()
  );
}


Future<void> placeOrder ({
  required String name,
  required MealPortion portion,
  required PaymentMethod paymentMethod,
  required String card,
  required String pin,
  String? extras,//todo replace extras
}) async { //todo return bool for success of order

}



Future<void> searchMeal(String text) async {

}



Future<void> sendFeedback ({String? contact, required String feedback}) async {

}