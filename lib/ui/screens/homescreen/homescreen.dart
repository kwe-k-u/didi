

import 'package:didi/ui/screens/homescreen/widgets/cafeteria_tile.dart';
import 'package:didi/ui/screens/homescreen/widgets/meal_preview_widget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: EdgeInsets.all(12),
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Do you like Waakye?",
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
                height: size.height  * 0.33,
                child : MealPreviewWidget(
                  name: "Waakye",
                  price: 15,
                  rating: 5,
                )
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text("Cafeteria",
                style: Theme.of(context).textTheme.headline5!
                .copyWith(fontWeight: FontWeight.w900),
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: size.height  * 0.3,
              color: Colors.grey.withOpacity(0.3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CafeteriaTile(
                    name: "Akonnor Catering Services",
                    locationText: "Near Student Office Area",
                    starCount: 5,
                  ),
                  Spacer(),
                  CafeteriaTile(
                    name: "Big Ben Catering Services",
                    locationText: "Old Lynes Cuisine",
                    starCount: 5,
                  ),
                ],
              ),
            ),


          ],
        ),
      ),

    );
  }
}
