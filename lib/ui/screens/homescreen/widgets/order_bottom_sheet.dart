
import 'package:didi/ui/widgets/custom_button.dart';
import 'package:didi/ui/widgets/custom_drop_down.dart';
import 'package:didi/ui/widgets/custom_text_field.dart';
import 'package:didi/utils/enums/meal_portion.dart';
import 'package:didi/utils/enums/payment_method.dart';
import 'package:didi/utils/helpers/methods.dart';
import "package:flutter/material.dart";


class OrderBottomSheet extends StatefulWidget {
  const OrderBottomSheet({Key? key}) : super(key: key);

  @override
  _OrderBottomSheetState createState() => _OrderBottomSheetState();
}

class _OrderBottomSheetState extends State<OrderBottomSheet> {
  TextEditingController name = new TextEditingController();
  MealPortion portion = MealPortion.full_portion;
  PaymentMethod payment = PaymentMethod.meal_plan;
  TextEditingController card = new TextEditingController();
  TextEditingController pin = new TextEditingController();
//todo fix keyboard overflow problem

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
            padding: const EdgeInsets.only( top:0.0),
            child: Container(
              height: 5,
              width: size.width * 0.1,
              color: Colors.grey,
            ),
          ),

          Spacer(flex: 1,),
          Text("Order", style: Theme.of(context).textTheme.headline6,
          ),


          Spacer(flex: 2,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                  controller: name,
                  width: size.width * 0.4,
                  keyboardType: TextInputType.text
              ),
              CustomDropDown<MealPortion>(

                initialValue: MealPortion.full_portion,
                onChanged: (MealPortion selected){
                    portion = selected;
                },
                items: [
                  DropdownMenuItem(
                    child: Text("Full Portion"),
                    value: MealPortion.full_portion,
                  ),
                  DropdownMenuItem(
                    child: Text("Half Portion"),
                    value: MealPortion.half_portion,
                  ),

                ],
                width: size.width * 0.4,
              ),
            ],
          ),



          Spacer(flex: 1,),
          CustomDropDown<PaymentMethod>(

            onChanged: (value){
              payment = value;

            },
            initialValue: PaymentMethod.meal_plan,
            items: [
              DropdownMenuItem(
                child: Text("Meal Plan"),
                value: PaymentMethod.meal_plan,
              ),
              DropdownMenuItem(
                child: Text("Mobile Money"),
                value: PaymentMethod.mobile_money,
              ),
            ],
          ),

          Spacer(flex: 1,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextField(
                    controller: card,
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text,
                  icon: Icons.credit_card_outlined,
                ),
                CustomTextField(//todo obscure (overflow problem)
                    icon: Icons.visibility_off,
                    controller: pin,
                    width: size.width * 0.4,
                    keyboardType: TextInputType.text),
              ],
            ),
          ),


          Spacer(flex: 1,),
          CustomDropDown(
            hintText: "Extras",
            items: [],
            initialValue: null,
            onChanged: (index) {
              //todo add extras

            },//todo add values
          ),

          Spacer(flex: 2,),
          Text("GHS 18.00", style: Theme.of(context).textTheme.headline4!
              .copyWith(
            fontWeight: FontWeight.w900,
            color: Colors.black
          ),),

          Spacer(flex: 2,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                width: size.width * 0.4,
                  text: "Cancel",
                  onPressed: (){
                  Navigator.pop(context);

                  }
                  ),
              CustomButton(
                  width: size.width * 0.4,
                  filled: true,
                  text: "Place Order",
                  onPressed: ()async{
                    await placeOrder(
                      name: name.text,
                      portion: portion,
                      card: card.text,
                      pin : pin.text,
                      paymentMethod: payment,
                      extras : null //todo add extras
                    );
                    Navigator.pop(context);
                  }),
            ],
          )
        ],

      ),
    );
  }
}
