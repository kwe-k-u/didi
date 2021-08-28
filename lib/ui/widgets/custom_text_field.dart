import "package:flutter/material.dart";
import 'package:flutter/services.dart';


class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final double? height;
  final double? width;
  final bool expand;
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final bool? obscureText;
  final TextInputType keyboardType;
  final String Function(String? e)? validator;


  const CustomTextField({
    Key? key,
    this.icon,
    this.expand = false,
    this.obscureText,
    required this.controller,
    this.labelText,
    this.validator,
    this.height,
    this.hintText,
    required this.keyboardType,
    this.width
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: widget.width ?? size.width * 0.9,
      height: widget.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      widget.labelText == null ?
      Container()
          : Container(
        padding: EdgeInsets.only(top: 12, bottom: 8),
          child: Text(widget.labelText!,
          style: Theme.of(context).textTheme.bodyText1,)
      ),


          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            minLines: widget.expand ? 15 : null,
            maxLines: widget.expand ? 15 : null,
            obscureText: widget.obscureText ?? false,
            keyboardType: widget.keyboardType,
            controller: widget.controller,
            style: Theme.of(context).textTheme.bodyText1,
            decoration: InputDecoration(
              hintMaxLines: 1,
              suffixIcon: widget.icon != null ? Icon(widget.icon) : null,
              hintText: widget.hintText,
              errorStyle: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.red),
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
              fillColor: Colors.grey.withOpacity(0.15),
              filled: true,

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
