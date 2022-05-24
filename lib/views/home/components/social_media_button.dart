import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required double height,
    required double width,
    required this.icons,
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade50,
          borderRadius: BorderRadius.circular(20)),
      child:  Icon(icons),
    );
  }
}