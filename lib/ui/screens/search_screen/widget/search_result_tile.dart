import 'package:flutter/material.dart';


class SearchResultTile extends StatelessWidget {
  const SearchResultTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: Placeholder(
        ),
      ),
      title: Text("Place"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Big Ben cafeteria Services"),
          Row(
            children: [
              Icon(Icons.star, color: Colors.amberAccent,),
              Icon(Icons.star, color: Colors.amberAccent,),
              Icon(Icons.star, color: Colors.amberAccent,),
              Icon(Icons.star, color: Colors.amberAccent,),
              Icon(Icons.star, color: Colors.amberAccent,),
            ],
          )
        ],
      ),

    );
  }
}
