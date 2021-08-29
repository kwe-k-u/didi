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

    return InkWell(
      splashColor: Colors.red,
      onTap: onPressed,
      splashFactory: InkSplash.splashFactory,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: filled ? Colors.black : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: Colors.black,
                width: 3
            )
        ),
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
    );
  }
}
