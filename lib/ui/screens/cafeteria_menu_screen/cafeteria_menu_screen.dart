import 'package:didi/ui/screens/cafeteria_menu_screen/widgets/custom_toggle_buttons.dart';
import 'package:didi/ui/widgets/meal_tile.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: Text("Akonnor * Menu"),
      ),
        body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 24),
              child: CustomToggleButtons(
                onTap: (index){

                },
              ),
            ),
            MealTile(name: "Deluxe Waakye", provider: "Extras * Bread and omelete", rating: 5)

          ],
        )
        )
    );
  }
}
