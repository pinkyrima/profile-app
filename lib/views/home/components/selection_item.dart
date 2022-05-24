import 'package:flutter/material.dart';

class SelectionItem extends StatelessWidget {
  const SelectionItem({
    Key? key,
    required double height,
    required  this.color,required this.text,
  }) : _height = height, super(key: key);

  final double _height;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _height / 18.22,
        //width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)),
        child:  Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500),
        ));
  }
}