import 'package:flutter/material.dart';


class RatingWidget extends StatelessWidget {
  final double count;
  const RatingWidget({required this.count,
    Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: _stars(count),
      ),
    );
  }
}


List<Widget> _stars(double count){
  List<Widget> list = [];
  final Icon full = const Icon(Icons.star, color: Colors.amber, size: 15,);
  final Icon half = const Icon(Icons.star_half, color: Colors.amber);

  for (int i = 0; i < count.toInt(); i++)
    list.add(full);

  if (count - count.toInt() != 0)
    list.add(half);

  return list;

}
