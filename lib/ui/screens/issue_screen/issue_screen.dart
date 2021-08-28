import 'package:didi/ui/widgets/custom_button.dart';
import 'package:didi/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';


class IssueScreen extends StatelessWidget {
  IssueScreen({Key? key}) : super(key: key);
  final TextEditingController contact = new TextEditingController();
  final TextEditingController feedback = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
        
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(8) + EdgeInsets.only(top: 12),
          width: size.width,
        height: size.height,
        child: Column(
          children: [
            CustomTextField(
                labelText: "Contact (Optional)",
                controller: contact,
                keyboardType: TextInputType.text),

            CustomTextField(
              expand: true,
                labelText: "Feedback",
                controller: contact,
                keyboardType: TextInputType.text
            ),


            CustomButton(
              margin: EdgeInsets.symmetric(vertical: 12),
              filled: true,
                text: "Send Feedback",
                onPressed: (){

                }
                )
          ],
        )
        )
    );
  }
}
