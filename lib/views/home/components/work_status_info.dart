import 'package:flutter/material.dart';

class WorkStatusInfo extends StatelessWidget {
  final String title;
  final String subTitle;
  const WorkStatusInfo({
    Key? key,required this.title,required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          subTitle,textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,
              color: Colors.blueGrey.shade600,
              fontWeight: FontWeight.w500),
        ),
        // Text(
        //   'work',
        //   style: TextStyle(
        //       fontSize: 16,
        //       color: Colors.blueGrey.shade600,
        //       fontWeight: FontWeight.w500),
        // ),
      ],
    );
  }
}