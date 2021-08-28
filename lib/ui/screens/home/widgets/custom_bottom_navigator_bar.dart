import "package:flutter/material.dart";


class CustomBottomNavigationBar extends StatefulWidget {
  int currentIndex;
  void Function(int index) onTap;
   CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
     required this.onTap
  }) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,

      currentIndex: widget.currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: widget.currentIndex == 0 ?
              _SelectedIcon(Icons.home_filled)
                  : Icon(Icons.home_outlined),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: widget.currentIndex == 1 ?
              _SelectedIcon(Icons.search)
                  : Icon(Icons.search), //todo change second icon
              label: ""
          ),
          BottomNavigationBarItem(
              icon: widget.currentIndex == 2 ?
              _SelectedIcon(Icons.person)
                  : Icon(Icons.person_outline),
              label: ""
          ),
        ],
      elevation: 0,

      onTap: widget.onTap,
    );
  }
}





class _SelectedIcon extends StatelessWidget {
  final IconData icon;
  const _SelectedIcon(this.icon,
  ) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Icon(Icons.circle, size: 10,),
      ],
    );
  }
}
