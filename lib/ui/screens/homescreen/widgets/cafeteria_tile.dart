import 'package:didi/ui/screens/cafeteria_menu_screen/cafeteria_menu_screen.dart';
import 'package:didi/ui/screens/homescreen/widgets/order_bottom_sheet.dart';
import 'package:didi/ui/widgets/rating_widget.dart';
import 'package:flutter/material.dart';


class CafeteriaTile extends StatelessWidget {
  final String name;
  final String locationText;
  final double starCount;
  const CafeteriaTile({
    Key? key,
    required this.name,
    required this.locationText,
    required this.starCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12)
        )
      ),

      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
              width: size.width * 0.78,
            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)
              )
            ),
            child: ListTile(
              title: Text(name,
                style: Theme.of(context).textTheme.headline6
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: Icon(Icons.location_on,
                          color: Theme.of(context).textTheme.caption!.color,
                          size: 13,),
                        ),
                        Text(locationText,
                        style: Theme.of(context).textTheme.caption,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        RatingWidget(count: starCount),
                        Spacer(),
                        Icon(Icons.call, color: Colors.green,)
                      ],
                    )
                  ],
                ),
              ),
            )
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> CafeteriaMenuScreen()
                  )
              );
            },
          ),
        ],
      ),
    );

  }
}
