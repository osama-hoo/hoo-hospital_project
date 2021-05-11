import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:web_smiley/models/constants.dart';

class DashBoardCenter extends StatefulWidget {
  @override
  _DashBoardCenterState createState() => _DashBoardCenterState();
}

class _DashBoardCenterState extends State<DashBoardCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ///for upper part
          Expanded(
            flex: 3,
            child: Row(
              children: [
                ///2 cards
                Expanded(
                  flex: 1,

                  ///column for  2 cards
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff00CCCC)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Alerts (Notifcation)",
                                      style: TextStyle(
                                          fontSize: 1.3.h,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/fall.svg"),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "Fall Alert",
                                          style: TextStyle(
                                              fontSize: 1.3.h,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset("assets/bar.svg")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Complete your\n weekly survey",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 1.3.h,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff00CCCC)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Weekly Symptoms Tracker",
                                      style: TextStyle(
                                          fontSize: 1.3.h,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Nausea",
                                          style: TextStyle(
                                              fontSize: 1.8.h,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset("assets/arrowdown.svg")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Fatigue",
                                          style: TextStyle(
                                              fontSize: 1.8.h,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset("assets/arrowup.svg")
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///for right card
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff00CCCC)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                    SvgPicture.asset("assets/heartrate.svg")),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Heart Rate detail",
                                style: TextStyle(
                                    fontSize: 1.3.h,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///for lower part
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Color(0xff00CCCC)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25.0),
                                child: Text(
                                  "Smart Scale data",
                                  style: TextStyle(
                                      fontSize: 1.3.h,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                //color: Colors.red,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Color(0xff00CCCC),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text("BMI 23.5"),
                                      ),
                                      left: 50,
                                      top: 30,
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Color(0xff00CCCC),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text("Bone Mass"),
                                      ),
                                      left: 60,
                                      bottom: 70,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        "assets/humanbody.svg",
                                        height: 40.w,
                                      ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Color(0xff00CCCC),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text("Body fat"),
                                      ),
                                      right: 50,
                                      top: 90,
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Color(0xff00CCCC),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Text("Body muscle"),
                                      ),
                                      right: 50,
                                      top: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff00CCCC)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff00CCCC).withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "7 day Average Activity Time",
                                      style: TextStyle(
                                          fontSize: 1.3.h,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 180,
                                    width: 150,
                                    child: Center(
                                      child: PieChart(

                                        PieChartData(
                                          sections: data,
                                          sectionsSpace: 10,
                                          centerSpaceColor: Colors.blue


                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 150,
                                    width: 100,
                                    child: ListView.builder(
                                        itemCount: data.length,
                                        itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                color: data[index].color,
                                                shape: BoxShape.circle,

                                              ),

                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(data[index].title)
                                          ],
                                        ),
                                      );
                                    }),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff00CCCC)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff00CCCC).withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Risk Meter",
                                      style: TextStyle(
                                          fontSize: 1.3.h,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
