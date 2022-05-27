import 'package:flutter/material.dart';

class ItemListScreen extends StatefulWidget {
  const ItemListScreen({
    Key? key,
    required double height,
    required double width,
    required this.imageList,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final List<String> imageList;

  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  int isInsideIndex = -1;

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
            onExit: (e) {
              setState(() {
                isInsideIndex = -1;
              });
            },
            onEnter: (s) {
              setState(() {
                isInsideIndex = index;
              });
            },
            child: SizedBox(
              // height: widget._height / 10,
              // width: widget._width / 9.10,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(widget.imageList[index], fit: BoxFit.contain,)),
                  // if(isInsideIndex == index)
                  Align(
                      alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: isInsideIndex == index ? widget._height / 15 : 0,
                      decoration: BoxDecoration(
                          // color: KColor.black87,
                          gradient: isInsideIndex == index
                              ? const LinearGradient(
                                  colors: [Colors.purple, Colors.blue],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                )
                              : null,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
