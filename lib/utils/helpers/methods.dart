


import 'package:didi/ui/screens/homescreen/widgets/order_bottom_sheet.dart';
import 'package:flutter/material.dart';

void orderMeal(BuildContext context){
  showBottomSheet(
      context: context,
      builder: (context)=> OrderBottomSheet()
  );
}