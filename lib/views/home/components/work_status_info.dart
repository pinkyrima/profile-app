import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/k_colors.dart';
import 'package:portfolio/views/styles/k_text_style.dart';

class WorkStatusInfo extends StatelessWidget {
  final String title;
  final String subTitle;

  const WorkStatusInfo({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: KTextStyle.bodyText1,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(subTitle,
            textAlign: TextAlign.center,
            style: KTextStyle.bodyText1
                .copyWith(fontWeight: FontWeight.w500, color: KColor.grey)),
      ],
    );
  }
}
