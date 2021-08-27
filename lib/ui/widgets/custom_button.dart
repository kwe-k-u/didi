import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final bool filled;
  final void Function() onPressed;

  const CustomButton({
    Key? key,
    this.width,
    this.height,
    this.filled = false,
    this.margin,
    required this.text,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: margin,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: Colors.black, width: 8)
          )),

          backgroundColor: MaterialStateProperty.all(
              filled ? Colors.black : Colors.transparent ),
        ),
        onPressed: onPressed,
        child: Container(
          padding: EdgeInsets.all(12),
          width: width ?? size.width * 0.8,
          height: height,
          child: Center(
            child: Text(text, style:
            Theme.of(context).textTheme.button!.copyWith(
              color: filled ? Colors.white : Colors.black,

            ),),
          ),
        ),
      ),
    );
  }
}
