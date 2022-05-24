import 'package:flutter/material.dart';

import '../../styles/k_colors.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({
    Key? key,
    required double height,
    required double width,
    required this.imageList,
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;
  final List<String> imageList;


  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.8,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (s) {
              setState(() {
               const LinearGradient(colors: [Colors.purple, Colors.blue],
                 begin: Alignment.bottomLeft,
                 end: Alignment.topRight,);
              });
            },
            child: Container(
              height: widget._height / 10,
              width: widget._width / 9.10,
              decoration: BoxDecoration(
                  color: KColor.black87,
                  image: DecorationImage(
                      image: AssetImage(widget.imageList[index],),

                  ),
                  borderRadius: BorderRadius.circular(15)),
            ),
          );
        });
  }
}