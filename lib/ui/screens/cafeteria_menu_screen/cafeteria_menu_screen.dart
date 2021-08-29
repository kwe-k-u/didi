import 'package:didi/ui/screens/cafeteria_menu_screen/widgets/custom_toggle_buttons.dart';
import 'package:didi/ui/screens/home/widgets/custom_bottom_navigator_bar.dart';
import 'package:didi/ui/widgets/meal_tile.dart';
import 'package:didi/utils/models/meal.dart';
import 'package:flutter/material.dart';

class CafeteriaMenuScreen extends StatefulWidget {
  const CafeteriaMenuScreen({Key? key}) : super(key: key);

  @override
  _CafeteriaMenuScreenState createState() => _CafeteriaMenuScreenState();
}

class _CafeteriaMenuScreenState extends State<CafeteriaMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Akonnor * Menu"),
      ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 0, onTap: (int index) { Navigator.pop(context); },
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 24),
              child: CustomToggleButtons(
                onTap: (index){

                },
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: ListView.builder(
                  itemCount: 4,
                    itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      elevation: 0.5,

                      child:MealTile(
                        meal: Meal (
                          name: "Deluxe waakye",
                          rating: 5,
                          provider: 'Akonnor Catering Services',
                          price: 18,
                        ),
                      ),
                    )
                  );

                }),
              ),
            ),

          ],
        )
        )
    );
  }
}
