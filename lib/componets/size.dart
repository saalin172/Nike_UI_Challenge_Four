import 'package:flutter/material.dart';

class SizeShoes extends StatelessWidget {
  const SizeShoes(
      {Key? key,
      required this.text,
      required this.isSelect,
      required this.onTap})
      : super(key: key);

  final String text;

  final bool isSelect;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //margin: EdgeInsets.only(left: 8),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelect ? Colors.black : null,
          border: isSelect
              ? Border.all(color: Colors.black, width: 2)
              : Border.all(color: Colors.grey, width: 2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: isSelect ? Colors.white : Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
