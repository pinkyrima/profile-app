import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/k_colors.dart';
import 'package:portfolio/views/styles/k_text_style.dart';

import 'components/download_button.dart';
import 'components/item_list_screen.dart';
import 'components/selection_item.dart';
import 'components/social_media_button.dart';
import 'components/work_status_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageList = [
    'assets/images/pc1.jpg',
    'assets/images/pc2.jpg',
    'assets/images/pc3.jpg',
    'assets/images/pc4.jpg',
    'assets/images/pc5.jpg',
    'assets/images/pc6.jpg',
  ];

  void onStateChanged(bool isDarkModeEnabled) {
    setState(() {
      isDarkModeEnabled = isDarkModeEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    print(_width);
    return Scaffold(
      backgroundColor: KColor.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: _height,
          child: Column(
            children: [
              SizedBox(
                height: _height / 41,
              ),
              // DayNightSwitcher(
              //   isDarkModeEnabled: isDarkModeEnabled,
              //   onStateChanged: onStateChanged,
              // ),
              CircleAvatar(
                backgroundColor: KColor.blue,
                radius: _height / 11.71,
                child: CircleAvatar(
                  backgroundColor: KColor.white,
                  radius: _height / 12.65,
                  child: Image.asset(
                    'assets/images/R.png',
                    height: 100,
                  ),
                ),
              ),
              SizedBox(
                height: _height / 41,
              ),
              Text(
                'Gianell Vussy',
                style: KTextStyle.headline6,
              ),
              SizedBox(
                height: _height / 273,
              ),
              Text(
                'Web Developer',
                style: KTextStyle.subtitle2,
              ),
              SizedBox(
                height: _height / 41,
              ),
              Row(
                children: [
                  const Spacer(),
                  Icon(
                    Icons.camera_alt,
                    color: KColor.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.note, color: KColor.grey),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.headset, color: KColor.grey),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: _height / 41,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  WorkStatusInfo(title: '7', subTitle: 'Years of\nwork'),
                  WorkStatusInfo(
                      title: '+124', subTitle: 'Completed\nprojects'),
                  WorkStatusInfo(title: '96', subTitle: 'Satisfied\ncustomers'),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: _height / 25.5,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  DownloadButton(height: _height, width: _width),
                  const Spacer(),
                  // SizedBox(width: 20,),
                  SocialMediaButton(
                    height: _height / 13.66,
                    width: _width / 8.33,
                    icons: Icons.whatsapp,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SocialMediaButton(
                    height: _height / 14.66,
                    width: _width / 8.33,
                    icons: Icons.message_sharp,
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: _height / 50.5,
              ),
              Container(
                height: _height / 14.66,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: KColor.grey2,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 1,
                        child: SelectionItem(
                          height: _height,
                          color: KColor.white,
                          text: 'Projects',
                        )),
                    const SizedBox(width: 10),
                    Flexible(
                        flex: 1,
                        child: SelectionItem(
                          height: _height,
                          color: KColor.transparent,
                          text: 'Skills',
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: _height / 40.1,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ItemListScreen(
                      height: _height, width: _width, imageList: imageList),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
