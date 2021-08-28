import 'package:didi/ui/screens/search_screen/widget/search_result_tile.dart';
import 'package:didi/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(12),
          width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 36),
              child: CustomTextField(
                width: size.width * 0.9,
                icon: Icons.search,
                keyboardType: TextInputType.text,
                controller: searchController,),
            ),
            Expanded(
              child: ListView(
                children: [
                  SearchResultTile()
                ],
              ),
            )
          ],
        )
        )
    );
  }
}
