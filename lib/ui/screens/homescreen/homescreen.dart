

import 'package:didi/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Spacer(
              flex: 1,
            ),


            Text("Didi.",
            style: Theme.of(context).textTheme.headline4!
                .copyWith(
              fontWeight: FontWeight.w900,
              
            ),
            ),

            RichText(
              maxLines: 1,
              text: TextSpan(
                  text: "Exclusive food ordering app for the ",
                  style: Theme.of(context).textTheme.bodyText1,

                  children: [
                    TextSpan(
                        text: "Ashesi Community",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w900)
                    )
                  ]
              ),
            ),

            Spacer(
              flex: 1,
            ),

            CustomButton(
              margin: EdgeInsets.all( 12.0),
              filled: true,
                text: "Get Started",
                onPressed: (){

                }
            )
          ],
        )
        )
    );
  }
}
