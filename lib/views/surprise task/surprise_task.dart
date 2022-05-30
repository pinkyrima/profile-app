import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SurpriseTaskColor extends StatelessWidget {
  const SurpriseTaskColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: const Radius.circular(80),
                                topRight: const Radius.circular(80))),
                      ),
                      Container(
                        height: 50,
                        width: 20,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          // borderRadius: BorderRadius.only(
                          //     bottomLeft: Radius.circular(80),
                          //     topRight: Radius.circular(80))
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: const BorderRadius.only(
                          topLeft: const Radius.circular(80),
                        )),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 60,
                            width: 70,
                            alignment: Alignment.bottomRight,
                            decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: const BorderRadius.only(
                                  topRight: const Radius.circular(0),
                                  bottomRight: Radius.circular(80),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 110,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade800,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topRight: const Radius.circular(50))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Container(
                      height: 60,
                      width: 60,
                      //alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: const BorderRadius.only(
                            topRight: const Radius.circular(80),
                            bottomRight: Radius.circular(0),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade800,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        topRight: const Radius.circular(50))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Container(
                      height: 60,
                      width: 60,
                      //alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: const BorderRadius.only(
                            topRight: const Radius.circular(80),
                            bottomRight: Radius.circular(0),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
