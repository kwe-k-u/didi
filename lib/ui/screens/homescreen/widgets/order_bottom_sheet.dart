import 'dart:ffi';

import 'package:didi/ui/widgets/custom_button.dart';
import 'package:didi/ui/widgets/custom_text_field.dart';
import "package:flutter/material.dart";


class OrderBottomSheet extends StatefulWidget {
  const OrderBottomSheet({Key? key}) : super(key: key);

  @override
  _OrderBottomSheetState createState() => _OrderBottomSheetState();
}

class _OrderBottomSheetState extends State<OrderBottomSheet> {
  @override
  void initState() {
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
    //todo clear controllers
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Container(
      height: size.height * 0.8,
      width: size.width,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom:20, top:8.0),
            child: Container(
              height: 5,
              width: size.width * 0.1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( bottom: 40.0),
            child: Text("Order", style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                    controller: TextEditingController(),
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text),
                CustomTextField(
                    controller: TextEditingController(),
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.text),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                    controller: TextEditingController(),
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text,
                  icon: Icons.credit_card_outlined,
                ),
                CustomTextField(//todo obscure (overflow problem)
                    icon: Icons.visibility_off,
                    controller: TextEditingController(),
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                controller: TextEditingController(),
                keyboardType: TextInputType.text),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("GHS 18.00", style: Theme.of(context).textTheme.headline4,),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                width: size.width * 0.4,
                  text: "Cancel",
                  onPressed: (){

                  }
                  ),
              CustomButton(
                  width: size.width * 0.4,
                  filled: true,
                  text: "Place Order",
                  onPressed: (){
                  }),
            ],
          )
        ],

      ),
    );
  }
}
