import 'package:flutter/material.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    Key? key,
    required double height,
    required double width,
  }) : _height = height, _width = width, super(key: key);

  final double _height;
  final double _width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _height / 14.66,
        width: _width / 2,
        child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Spacer(),
                  Text(
                    'Download CV',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Icon(Icons.download_outlined)
                ],
              ),
            )));
  }
}