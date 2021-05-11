import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_smiley/models/card.dart';
import 'package:sizer/sizer.dart';

class DashBoardRight extends StatefulWidget {
  @override
  _DashBoardRightState createState() => _DashBoardRightState();
}

class _DashBoardRightState extends State<DashBoardRight> {

  int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      // width: 3.h,
      //color: Colors.amber,
      margin: EdgeInsets.all(20),
      child: ListView.builder(
          itemCount: listOfDashboardCards.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                });

              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 9.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: selectedIndex == index
                      ?  Color(0xff00CCCC)
                      : Colors.white,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          listOfDashboardCards[index].icon,
                          height: 3.h,
                        ),
                        Text(
                          listOfDashboardCards[index].name,
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8.sp),
                        ),
                      ],
                    ),
                    Text(listOfDashboardCards[index].info,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8.sp),),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
