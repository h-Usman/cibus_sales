import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  final String myText;
  final Function buttonIsClicked;
  final bool? isSelected;

  const MyColumn({
    Key? key,
    required this.myText,
    required this.buttonIsClicked,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          myText,
          style: TextStyle(
              color: isSelected != null ? Colors.black : Colors.amber),
        ),
        ElevatedButton(
          onPressed: () {
            buttonIsClicked();
          },
          child: const Text(
            'HomeView',
          ),
        )
      ],
    );
  }
}
