import 'package:didi/ui/widgets/rating_widget.dart';
import 'package:didi/utils/helpers/methods.dart';
import 'package:flutter/material.dart';


class MealTile extends StatelessWidget {
  final String name;
  final  String provider;
  final double rating;
  const MealTile({Key? key, 
    required this.name,
    required this.provider,
    required this.rating
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
      title: Text(name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(provider, style: Theme.of(context).textTheme.overline,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RatingWidget(count: rating),
          )
        ],
      ),
      onTap: (){
        orderMeal(context);
      },

    );
  }
}
