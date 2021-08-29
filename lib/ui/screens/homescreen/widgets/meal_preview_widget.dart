import 'package:didi/ui/screens/homescreen/widgets/order_bottom_sheet.dart';
import 'package:didi/ui/widgets/rating_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MealPreviewWidget extends StatelessWidget {
  final double price;
  final String name;
  final double rating;
  const MealPreviewWidget({
    Key? key,
    required this.name,
    required this.price,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom:24),
              child: _Card(
                name: name,
                rating: rating,
                price: price
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                shape: BoxShape.circle
              ),
              child: IconButton(
                  onPressed: (){

                    showBottomSheet(
                        elevation: 12,
                        backgroundColor: Colors.black26,
                        context: context,
                        builder: (context){
                          return OrderBottomSheet();
                        });
                    },
                  icon: Icon(Icons.arrow_forward)
              ),
            ),
          )
        ],
      ),
    );
  }
}




class _Card extends StatelessWidget {
  final double price;
  final String name;
  final double rating;
  const _Card({
    Key? key,
    required this.name,
    required this.price,
    required this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 24,
      color: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: EdgeInsets.all(12) + EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                      style: Theme.of(context).textTheme.headline6!
                          .copyWith(
                          color: Colors.white
                      ),
                    ),
                    RatingWidget(count: rating,

                    )
                  ],
                ),
                Spacer(),
                Text("GHS ${price.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.headline6!
                    .copyWith(
                  color: Colors.white
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
