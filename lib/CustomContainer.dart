import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int selectedItemIndex = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        setState(() {
          selectedItemIndex = selectedItemIndex == 1 ? 2 : 1;
        });
      },
      child: AnimatedContainer(
        width: 300,
        height: 300,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: selectedItemIndex == 1 ? Colors.yellow : Colors.pink,
          border: Border.all(
            color: selectedItemIndex == 1
                ? Colors.white
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: TextStyle(
            color: selectedItemIndex == 1
                ? Colors.black
                : Colors.white,
          ),
          child: const Text('Featured!'),
        ),
      ),
    );
  }
}
