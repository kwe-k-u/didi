import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";


class CustomToggleButtons extends StatefulWidget {
  final void Function(int index) onTap;
  const CustomToggleButtons({Key? key,
    required this.onTap}) : super(key: key);

  @override
  _CustomToggleButtonsState createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  List<bool> selected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.64,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              blurRadius: 18,
              color: Colors.grey.withOpacity(0.5)
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                child: _ToggleButton(label: "Breakfast", enabled: selected[0]),
              onTap: (){
                  setState(() {
                    selected = [ true, false, false];
                  });
                  widget.onTap(0);
              },
            ),
            InkWell(
                child: _ToggleButton(label: "Lunch", enabled: selected[1]),
              onTap: (){
                setState(() {
                  selected = [ false, true, false];
                });
                widget.onTap(1);
              },),
            InkWell(
                child: _ToggleButton(label: "Supper", enabled: selected[2]),
              onTap: (){
                setState(() {
                  selected = [ false, false, true];
                });
                widget.onTap(2);
              },
            ),
          ],
      ),
    );
  }
}





class _ToggleButton extends StatelessWidget {
  final String label;
  final bool enabled;
  const _ToggleButton({
    Key? key,
    required this.label,
    required this.enabled
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      child: Container(
        width: size.width * 0.21,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: enabled ? Colors.black : Colors.transparent
        ),
        child: Center(
            child: Text(label,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: enabled ? Colors.white : Colors.black),
            )
        ),
      ),
    );
  }
}

