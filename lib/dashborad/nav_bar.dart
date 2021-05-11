import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // color: Colors.red,
              child: Center(
                child: SvgPicture.asset("assets/uni_logo.svg"),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset("assets/dashboard.svg"),
                  title: Text(
                    "DashBoard",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xff00CCCC)),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/history.svg"),
                  title: Text(
                    "History",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/weeklyreports.svg"),
                  title: Text(
                    "Weekly Stats",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, ),
                  ),
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/survey.svg"),
                  title: Text(
                    "Survey",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, ),
                  ),
                  trailing: Icon(Icons.error,color: Colors.red,),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               ListTile(
                 leading: SvgPicture.asset("assets/assets/phone-call.svg"),
                 title: Text(
                   "  Support",
                   style: TextStyle(
                     fontWeight: FontWeight.bold, ),
                 ),
               ),
               Text("Powered by\nHoo Controls Inc",textAlign: TextAlign.center,style: TextStyle(fontSize: 10),)
             ],
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(20),
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
    );
  }
}
