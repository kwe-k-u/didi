import 'package:didi/ui/widgets/rating_widget.dart';
import 'package:didi/utils/helpers/methods.dart';
import 'package:didi/utils/models/meal.dart';
import 'package:flutter/material.dart';


class MealTile extends StatelessWidget {
  final Meal meal;

  const MealTile({Key? key, 
  required this.meal,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: Placeholder(
        ),
      ),
      title: Text(meal.name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(meal.provider,
            style: Theme.of(context).textTheme.overline,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RatingWidget(count: meal.rating),
          )
        ],
      ),
      onTap: (){
        showOrderMealPopup(context);
      },

    );
  }
}
