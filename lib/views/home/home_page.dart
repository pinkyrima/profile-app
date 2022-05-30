import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/main.dart';
import 'package:portfolio/views/home/bloc/theme_switch_bloc.dart';
import 'package:portfolio/views/home/bloc/theme_switch_bloc.dart';
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

  // void onStateChanged(bool newState) {
  //   setState(() {
  //     isDarkModeEnabled.value = newState;
  //   });
  //   print('$newState');
  // }

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    print(_width);
    return Scaffold(
      // backgroundColor: KColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: _height / 41,
            ),
            BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
              builder: (context, state) {
                return Switch(
                  value: (state as ThemeSwitch).isDark,
                  onChanged: (isDark){
                    context.read<ThemeSwitchBloc>().add(ThemeSwitchToggleEvent(isDark));
                  },
                );
              },
            ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera_alt, color: KColor.grey),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.note, color: KColor.grey),
                ),
                Icon(Icons.headset, color: KColor.grey),
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
                WorkStatusInfo(title: '+124', subTitle: 'Completed\nprojects'),
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
                  color: KColor.grey2, borderRadius: BorderRadius.circular(15)),
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
            // ListView(children: List.generate(100, (index) => Text('$index')),shrinkWrap: true,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ItemListScreen(
                  height: _height, width: _width, imageList: imageList),
            )
          ],
        ),
      ),
    );
  }
}
