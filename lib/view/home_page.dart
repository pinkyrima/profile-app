import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 70,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 65,
                child: Image.asset(
                  'assets/images/R.png',
                  height: 120,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Gianell Vussy',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Web Developer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey.shade500,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.note, color: Colors.grey.shade500),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.headset, color: Colors.grey.shade500),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      '7',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Years of',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'work',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '+124',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Completed',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'projects',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '96',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Satisfied',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Customers',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                    height: 60,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Download CV',
                                style: TextStyle(fontSize: 18),
                              ),
                              Icon(Icons.download_outlined)
                            ],
                          ),
                        ))),
                Spacer(),
                // SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.whatsapp),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.message_sharp),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                        height: 45,
                        //width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                        height: 45,
                        //width: 100,
                        alignment: Alignment.center,
                        // decoration: BoxDecoration(
                        //     color: Colors.white,
                        //     borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          'Skills',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context,index){
                  return Container(

                  );
                })
          ],
        ),
      ),
    );
  }
}
