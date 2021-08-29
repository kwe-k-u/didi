import "package:flutter/material.dart";


class CustomDropDown<T> extends StatefulWidget {
  final double? height;
  final double? width;
  final String? hintText;
  final List<DropdownMenuItem<T>>? items;
  final void Function(T item) onChanged;
  final T initialValue;
  final IconData? icon;
  final String? labelText;


  const CustomDropDown({
    Key? key,
    required this.items,
    required this.onChanged,
    required this.initialValue,
    this.icon,
    this.labelText,
    this.height,
    this.hintText,
    this.width
  }) : super(key: key);

  @override
  _CustomDropDownState<T> createState() => _CustomDropDownState<T>();
}

class _CustomDropDownState<T> extends State<CustomDropDown> {
  late T _selected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selected = widget.initialValue;
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: widget.width ?? size.width * 0.9,
      height: widget.height ,
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


          DropdownButtonFormField<T>(
            value: _selected,
            onChanged: ( val){
              if (val  != null)
              setState(() {
                _selected = val;
              });
            },

            style: Theme.of(context).textTheme.bodyText1,
            decoration: InputDecoration(
              hintMaxLines: 1,
              suffixIcon: widget.icon != null ? Icon(widget.icon) : null,
              hintText: widget.hintText,
              errorStyle: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.red),
              hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.grey),
              fillColor: Colors.grey.withOpacity(0.25),
              filled: true,

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12),
              ),
            ), items: widget.items as List<DropdownMenuItem<T>>,
          ),
        ],
      ),
    );
  }
}
